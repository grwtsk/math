# mergeCompatible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb1eb2bda85b6c1ddf28b46b5757c6636b061ceeef6eca536dfa4fc6324cd919",
  "kind": "def",
  "lexical_name": "mergeCompatible",
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
  "slug": "mergecompatible--71a6290e5b9bfdd69245ceb3",
  "source": {
    "blob": "3888570c4a23e933b0e986fc13f2e4724fbd1830",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71a6290e5b9bfdd69245ceb36a622b27e86abdb22efd4f8e6e5963cd43b2a275",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb1eb2bda85b6c1ddf28b46b5757c6636b061ceeef6eca536dfa4fc6324cd919`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergeCompatible (s₁ s₂ : Substitution) : Substitution := Id.run do
  assert! s₁.premises.size == s₂.premises.size
  assert! s₁.levels.size == s₂.levels.size
  let mut result := s₁
  for h : i in [:s₂.premises.size] do
    if let some e := s₂.premises[i] then
      if s₁.premises[i]!.isNone then
        result := result.insert ⟨i⟩ e
  for h : i in [:s₂.levels.size] do
    if let some l := s₂.levels[i] then
      if s₁.levels[i]!.isNone then
        result := result.insertLevel ⟨i⟩ l
  return result

/-- Returns `true` if any expression in the codomain of `s` contains `hyp`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf135464690bef443eb031f65564aef6b1190a95cc601a47936ba9c2e9ed06073.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3888570c4a23e933b0e986fc13f2e4724fbd1830` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
