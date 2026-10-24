# charpoly_nilpotent_tfae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66165ee7821805713a12fd845e21f1c7d97d8393",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cccc5444-d65d-47ac-8e7b-5c1b8a0d3f83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b293bc07-5993-ff48-d442-4079b8bdfced",
  "kind": "lemma",
  "lexical_name": "charpoly_nilpotent_tfae",
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
  "slug": "charpoly-nilpotent-tfae--00f9ba5523ec62531f2790a7",
  "source": {
    "blob": "66165ee7821805713a12fd845e21f1c7d97d8393",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00f9ba5523ec62531f2790a791e853338c3fbd213c54cce9a64eae0baff926c8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b293bc07-5993-ff48-d442-4079b8bdfced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma charpoly_nilpotent_tfae [IsNoetherian R M] (φ : Module.End R M) :
    List.TFAE [
      IsNilpotent φ,
      φ.charpoly = X ^ finrank R M,
      ∀ m : M, ∃ (n : ℕ), (φ ^ n) m = 0,
      natTrailingDegree φ.charpoly = finrank R M ] := by
  tfae_have 1 → 2 := IsNilpotent.charpoly_eq_X_pow_finrank
  tfae_have 2 → 3
  | h, m => by
    use finrank R M
    suffices φ ^ finrank R M = 0 by simp only [this, LinearMap.zero_apply]
    simpa only [h, map_pow, aeval_X] using φ.aeval_self_charpoly
  tfae_have 3 → 1
  | h => by
    obtain ⟨n, hn⟩ := Filter.eventually_atTop.mp <| φ.eventually_iSup_ker_pow_eq
    use n
    ext x
    rw [zero_apply, ← mem_ker, ← hn n le_rfl]
    obtain ⟨k, hk⟩ := h x
    rw [← mem_ker] at hk
    exact Submodule.mem_iSup_of_mem _ hk
  tfae_have 2 ↔ 4 := by
    rw [← φ.charpoly_natDegree, φ.charpoly_monic.eq_X_pow_iff_natTrailingDegree_eq_natDegree]
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zero/Varianta4a1916f6e5bec54e92cc85a63797617a33aa8ed1a58a95b92d499c01bfd0292.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66165ee7821805713a12fd845e21f1c7d97d8393` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
