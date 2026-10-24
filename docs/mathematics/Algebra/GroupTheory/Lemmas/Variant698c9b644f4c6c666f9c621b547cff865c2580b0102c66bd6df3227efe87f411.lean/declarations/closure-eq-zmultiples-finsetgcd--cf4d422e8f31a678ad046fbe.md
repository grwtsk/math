# closure_eq_zmultiples_finsetGcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3a0b02bf-63d3-740c-f529-1deb20009b23",
  "kind": "theorem",
  "lexical_name": "closure_eq_zmultiples_finsetGcd",
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
  "slug": "closure-eq-zmultiples-finsetgcd--cf4d422e8f31a678ad046fbe",
  "source": {
    "blob": "ab4af60abf69c067aff850269b07eb3e84b56e97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 96,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf4d422e8f31a678ad046fbe3e2bf9f43a78f40d5bc046134df7881d23313429",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3a0b02bf-63d3-740c-f529-1deb20009b23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_eq_zmultiples_finsetGcd (s : Finset ℤ) : closure s = zmultiples (s.gcd id) := by
  apply le_antisymm
  · grind [closure_le, mem_zmultiples_iff, SetLike.mem_coe, Finset.gcd_dvd]
  · have ⟨g, h⟩ := s.gcd_eq_sum_mul id
    rw [zmultiples_le, mem_closure_iff_of_fintype, h, ← Finset.sum_coe_sort]
    use g ∘ (↑)
    simp [mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant698c9b644f4c6c666f9c621b547cff865c2580b0102c66bd6df3227efe87f411.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab4af60abf69c067aff850269b07eb3e84b56e97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
