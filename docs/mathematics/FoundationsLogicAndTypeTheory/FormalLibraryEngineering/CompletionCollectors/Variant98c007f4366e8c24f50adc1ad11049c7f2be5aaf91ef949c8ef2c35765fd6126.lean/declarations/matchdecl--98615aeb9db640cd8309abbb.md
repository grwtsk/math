# matchDecl?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5686813e7a09b6a6c51d087d278519368e7e4f5f6841b4acf5ccac2a998ac81c",
  "kind": "def",
  "lexical_name": "matchDecl?",
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
  "slug": "matchdecl--98615aeb9db640cd8309abbb",
  "source": {
    "blob": "f876fe775b7afc6a446227b3c3060b6ba3eafb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 119,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98615aeb9db640cd8309abbb30946e35e20a3e055934c1695548029bab29dbae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5686813e7a09b6a6c51d087d278519368e7e4f5f6841b4acf5ccac2a998ac81c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private def matchDecl? (ns : Name) (id : Name) (danglingDot : Bool) (declName : Name) : MetaM (Option Name) := do
    let some declName ← normPrivateName? declName
      | return none
    if !ns.isPrefixOf declName then
      return none
    let declName := declName.replacePrefix ns Name.anonymous
    if danglingDot then
      -- If the input is `id.` and `declName` is of the form `id.atomic`, complete with `atomicName`
      if id.isPrefixOf declName then
        let declName := declName.replacePrefix id Name.anonymous
        if declName.isAtomic && !declName.isAnonymous then
          return some declName
    else if let (.str p₁ s₁, .str p₂ s₂) := (id, declName) then
      if p₁ == p₂ then
        -- If the namespaces agree, fuzzy-match on the trailing part
        if s₁.charactersIn s₂ then
          return some <| .mkSimple s₂
        else
          return none
      else if p₁.isAnonymous then
        -- If `id` is namespace-less, also fuzzy-match declaration names in arbitrary namespaces
        -- (but don't match the namespace itself).
        -- Penalize score by component length of added namespace.
        if s₁.charactersIn s₂ then
          return some declName
        else
          return none
    return none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f876fe775b7afc6a446227b3c3060b6ba3eafb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
