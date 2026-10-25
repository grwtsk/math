# findLowerBoundStanceOfImported?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:389efb780ebb30ce7b04cf83b800fb45498e4cd1834ab2fddf46f9811e90c254",
  "kind": "def",
  "lexical_name": "findLowerBoundStanceOfImported?",
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
  "slug": "findlowerboundstanceofimported--15785f8b979ac3388a3aac78",
  "source": {
    "blob": "fa42e630e9f72637f0213ee564c99d66349ebfec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 507,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15785f8b979ac3388a3aac783f7ff49d90029168a237bbeaaa40f13b1057ac0f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:389efb780ebb30ce7b04cf83b800fb45498e4cd1834ab2fddf46f9811e90c254`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 507–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findLowerBoundStanceOfImported? (decl : Name) : CoreM (Option Stance) :=
  withoutExporting do
  let env ← getEnv
  let some idx := env.getModuleIdxFor? decl | return none
  let mod := env.header.modules[idx]!
  unless mod.hasData do return none
  unless env.contains decl do return none -- exclude compiler defs as well
  let isMeta :=
    -- TODO: use `isDeclMeta'` or not?
    if ← pure !(isNoncomputable env decl) <&&> shouldHaveGeneratedCode decl then
      some (isMarkedMeta env decl) else none
  if !mod.importAll then
    letI isPublic := true -- It must be public if we can see it
    -- Look in the private scope as well in case it's imported privately
    -- (This is why `hasExposedBody` is wrong downstream)
    -- This is redundant given the outer `withExporting`, but for readability.
    let isExposed := (env.setExporting false).find? decl |>.any (·.hasValue)
    return some {
      isPublic, isExposed, isMeta, isPublic_if_isExposed := by grind [Option]
      isExact := true }
  else
    -- We demand a public name to be considered public.
    -- If publicly imported, exposure is determined by whether it has a value.
    -- If privately imported, we assume that exposure is the `import all`'s doing.
    let ci? := guard (!isPrivateName decl) *>
      (((env.setExporting true).find? decl).map (·.hasValue)
        <|> ((env.setExporting false).find? decl).map fun _ => false)
    let isPublic := ci?.isSome
    let kind? := getOriginalConstKind? env decl
    let isExposable := kind?.isEqSome .defn || kind?.isEqSome .opaque
    let isExposed := if isExposable then ci? else none
    return some {
      isPublic, isExposed, isMeta, isPublic_if_isExposed := by grind [Option]
      isExact := false }

/-- The `ImportNeedsKind` implied by a downstream constant with stance `downstreamStance` demanding
a declaration with stance `upstreamStance` via `demand : DeclDeclNeedsKind`. Assumes that the
demand is satisfiable by the upstream declaration (e.g. that we are not trying to use an
intrinsically private declaration in a public position).

Note that this does not account for indirect module uses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeclNeeds/Variant331b29916cd553818a8be50d434bcc1acfbdef9d9234e3e7bf9eef2575ac29a8.lean#L507).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa42e630e9f72637f0213ee564c99d66349ebfec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
