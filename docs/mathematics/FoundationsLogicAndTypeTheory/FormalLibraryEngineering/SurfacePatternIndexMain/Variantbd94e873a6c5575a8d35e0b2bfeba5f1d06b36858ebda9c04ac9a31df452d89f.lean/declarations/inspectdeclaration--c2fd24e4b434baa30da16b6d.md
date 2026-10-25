# inspectDeclaration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3fe59cd9993eaaf313caec77f4e678f40f3b16d5396cd3df989ff8415c36c12",
  "kind": "def",
  "lexical_name": "inspectDeclaration",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "inspectdeclaration--c2fd24e4b434baa30da16b6d",
  "source": {
    "blob": "8c54195ad9078155150199b4d3276fee6d80363e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantbd94e873a6c5575a8d35e0b2bfeba5f1d06b36858ebda9c04ac9a31df452d89f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2fd24e4b434baa30da16b6d551d1a11a95d912a1a09a32ead25177ffaa8a2f1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantbd94e873a6c5575a8d35e0b2bfeba5f1d06b36858ebda9c04ac9a31df452d89f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3fe59cd9993eaaf313caec77f4e678f40f3b16d5396cd3df989ff8415c36c12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inspectDeclaration
    (env : Environment)
    (axiomCache : NameMap (Array Name))
    (info : ConstantInfo) : IO Json := do
  let name := info.name
  let moduleName := declarationModule env name
  let path := sourceRelativePath moduleName
  let source ← readSource? moduleName
  /- The raw environment docstring is the indexed fact. Resolving manual links
     is presentation work and repeatedly loads documentation metadata. -/
  let docstring ← Lean.findSimpleDocString? env name (includeBuiltin := false)
  let action : CoreM (String × Array Name × Option DeclarationRanges) := do
    /- `Expr.toString` is the stable structural normalization used by the
       existing Surface index. Pretty-printing every declaration through Meta
       is presentation work and makes a project index unnecessarily costly. -/
    let normalizedType := toString info.type
    let ranges ← Lean.findDeclarationRanges? name
    pure (normalizedType, axiomCache.find? name |>.getD #[], ranges)
  let (normalizedType, axioms, ranges) ← action.toIO'
    { fileName := "<surface_pattern_index>", fileMap := default }
    { env := env }
  /- Traversing every opaque proof value here duplicates axiom collection and
     makes indexing scale with the total proof-term graph. Type-level direct
     constants remain deterministic retrieval features; theorem proof closure
     is represented separately by `axiomClosure`. -/
  let usedConstants := info.type.getUsedConstantsAsSet.toArray
    |>.toList
    |>.map Name.toString
    |>.mergeSort (· < ·)
  let tags := classificationTags env name
  let sourceHash := source.map (fun text => toString (digestString text))
  let excerptHash := sourceExcerpt? source ranges |>.map (fun text => toString (digestString text))
  let proofStatus :=
    if info.isTheorem then "kernel_checked_theorem"
    else if info.isAxiom then "axiom"
    else "not_a_theorem"
  let observedRanges := rangeJson source ranges
  pure <| Json.mkObj [
    ("schema", toJson schema),
    ("recordKind", toJson "declaration"),
    ("name", toJson name.toString),
    ("module", toJson moduleName.toString),
    ("sourceFile", toJson path),
    ("declarationRange", observedRanges),
    ("selectionRange", observedRanges),
    ("declarationKind", toJson (constantKind info)),
    ("normalizedType", toJson normalizedType),
    ("structuralExpressionDigest", toJson (toString (digestString (toString info.type)))),
    ("typeHash", toJson (toString (digestString normalizedType))),
    ("sourceFileHash", sourceHash.map toJson |>.getD Json.null),
    ("sourceExcerptHash", excerptHash.map toJson |>.getD Json.null),
    ("proofStatus", toJson proofStatus),
    ("classificationTags", toJson tags),
    ("directConstantsUsed", toJson usedConstants),
    ("projectDependencies", toJson usedConstants),
    ("importedDependencies", toJson usedConstants),
    ("axiomClosure", toJson (axioms.toList.map Name.toString |>.mergeSort (· < ·))),
    ("docstring", docstring.map toJson |>.getD Json.null),
    ("proofExpressionSkeleton", toJson usedConstants),
    ("proofShapeClassification", toJson (if info.isTheorem then "custom" else "exact")),
    ("kernelReceiptHash", toJson (toString (digestString <|
      name.toString ++ "\n" ++ normalizedType ++ "\n" ++
        String.intercalate "," (axioms.toList.map Name.toString)))),
    ("public", toJson true),
    ("proofBoundaryClass", toJson (if info.isTheorem then "checked" else "data")),
    ("environmentFingerprint", toJson (environmentFingerprint env))
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantbd94e873a6c5575a8d35e0b2bfeba5f1d06b36858ebda9c04ac9a31df452d89f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SurfacePatternIndexMain/Variantbd94e873a6c5575a8d35e0b2bfeba5f1d06b36858ebda9c04ac9a31df452d89f.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c54195ad9078155150199b4d3276fee6d80363e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
