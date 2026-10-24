# exists_norm_nsmul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff6d5673-6ad6-3e5c-3cb0-d342fddfc451",
  "kind": "lemma",
  "lexical_name": "exists_norm_nsmul_le",
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
  "slug": "exists-norm-nsmul-le--f73c67a2ab1c3a62ddedbdb4",
  "source": {
    "blob": "465631648544a42e7720dcb9a9a4a9ac3b74ffcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 363,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f73c67a2ab1c3a62ddedbdb4cca42d5f42b13e8b5cd68f1077e2e5cb6d6774a8",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff6d5673-6ad6-3e5c-3cb0-d342fddfc451`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_norm_nsmul_le (ξ : 𝕊) {n : ℕ} (hn : 0 < n) :
    ∃ j ∈ Icc 1 n, ‖j • ξ‖ ≤ T / ↑(n + 1) := by
  apply NormedAddCommGroup.exists_norm_nsmul_le (μ := volume) ξ hn
  rw [AddCircle.measure_univ, volume_closedBall, ← ENNReal.ofReal_nsmul,
    mul_div_cancel₀ _ two_ne_zero, min_eq_right (div_le_self hT.out.le <| by simp), nsmul_eq_mul,
    mul_div_cancel₀ _ (Nat.cast_ne_zero.mpr n.succ_ne_zero)]

end AddCircle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465631648544a42e7720dcb9a9a4a9ac3b74ffcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
