# coverMincard_finite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38015c8911940b320a2cbd89df153f30f342af42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 241,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:696a7c86-9bcc-b158-cd6c-4d0408d51fcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db849fd2-4be1-96ee-e04e-40fd906e1c0c",
  "kind": "lemma",
  "lexical_name": "coverMincard_finite_iff",
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
  "slug": "covermincard-finite-iff--6189c52bb915a3cd4585e18f",
  "source": {
    "blob": "38015c8911940b320a2cbd89df153f30f342af42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 241,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6189c52bb915a3cd4585e18fdffc654b728e4a3eb33d342a57bef6d0a414b727",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db849fd2-4be1-96ee-e04e-40fd906e1c0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverMincard_finite_iff (T : X → X) (F : Set X) (U : Set (X × X)) (n : ℕ) :
    coverMincard T F U n < ⊤ ↔
    ∃ s : Finset X, IsDynCoverOf T F U n s ∧ s.card = coverMincard T F U n := by
  refine ⟨fun h_fin ↦ ?_, fun ⟨s, _, s_coverMincard⟩ ↦ s_coverMincard ▸ WithTop.coe_lt_top s.card⟩
  obtain ⟨k, k_min⟩ := WithTop.ne_top_iff_exists.1 h_fin.ne
  rw [← k_min]
  simp only [ENat.some_eq_coe, Nat.cast_inj]
  have : Nonempty {s : Finset X // IsDynCoverOf T F U n s} := by
    by_contra h
    apply ENat.coe_ne_top k
    rw [← ENat.some_eq_coe, k_min, coverMincard, iInf₂_eq_top]
    simp only [ENat.coe_ne_top, imp_false]
    rw [nonempty_subtype, not_exists] at h
    exact h
  have key := ciInf_mem fun s : {s : Finset X // IsDynCoverOf T F U n s} ↦ (s.val.card : ℕ∞)
  rw [coverMincard, iInf_subtype'] at k_min
  rw [← k_min, mem_range, Subtype.exists] at key
  simp only [ENat.some_eq_coe, Nat.cast_inj, exists_prop] at key
  exact key

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38015c8911940b320a2cbd89df153f30f342af42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
