# printIdCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8ae216233fede9663298b0f3d65dbcbf1d956388ba9c2b83e3b720b848dbb8b",
  "kind": "def",
  "lexical_name": "printIdCore",
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
  "slug": "printidcore--8a3123f10154d433dd9f962e",
  "source": {
    "blob": "8bdbae57a80b5eb963b38beef630040a3f4c28ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a3123f10154d433dd9f962e4c7d9fb519350d047bdecf673c159d961ff3bb0a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8ae216233fede9663298b0f3d65dbcbf1d956388ba9c2b83e3b720b848dbb8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def printIdCore (sigOnly : Bool) (id : Name) : CommandElabM Unit := do
  let env ← getEnv
  match env.find? id with
  | ConstantInfo.axiomInfo { levelParams := us, type := t, isUnsafe := u, .. } =>
    match getOriginalConstKind? env id with
    | some .defn => printDefLike sigOnly "def" id us t none (if u then .unsafe else .safe)
    | some .thm => printDefLike sigOnly "theorem" id us t none (if u then .unsafe else .safe)
    | _  => printAxiomLike "axiom" id us t (if u then .unsafe else .safe)
  | ConstantInfo.defnInfo  { levelParams := us, type := t, value := v, safety := s, .. } => printDefLike sigOnly "def" id us t v s
  | ConstantInfo.thmInfo  { levelParams := us, type := t, value := v, .. } => printDefLike sigOnly "theorem" id us t v
  | ConstantInfo.opaqueInfo  { levelParams := us, type := t, isUnsafe := u, .. } => printAxiomLike "opaque" id us t (if u then .unsafe else .safe)
  | ConstantInfo.quotInfo  { levelParams := us, type := t, .. } => printQuot id us t
  | ConstantInfo.ctorInfo { levelParams := us, type := t, isUnsafe := u, .. } => printAxiomLike "constructor" id us t (if u then .unsafe else .safe)
  | ConstantInfo.recInfo recInfo => printRecursor recInfo
  | ConstantInfo.inductInfo { levelParams := us, numParams, type := t, ctors, isUnsafe := u, .. } =>
    if isStructure env id then
      printStructure id us numParams t ctors[0]! u
    else
      printInduct id us numParams t ctors u
  | none => throwUnknownId id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Print/Variant459b4ecda77dc07c346b6cb48be0f8941c9aa30e2729ffb8f339f604052140a3.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bdbae57a80b5eb963b38beef630040a3f4c28ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
