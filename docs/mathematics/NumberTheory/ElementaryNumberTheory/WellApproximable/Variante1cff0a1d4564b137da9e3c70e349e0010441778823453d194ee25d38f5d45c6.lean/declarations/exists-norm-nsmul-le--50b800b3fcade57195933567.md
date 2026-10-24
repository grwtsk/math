# exists_norm_nsmul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f747a80f7f8ad68f70e282589f3fd3fd57b1817",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98db5d4c-204a-8be6-4378-76b57d3944d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8acfbd50-0ba8-1490-cbe0-395fc7e3bafa",
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
  "slug": "exists-norm-nsmul-le--50b800b3fcade57195933567",
  "source": {
    "blob": "7f747a80f7f8ad68f70e282589f3fd3fd57b1817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 379,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50b800b3fcade5719593356740d5ec77cae640793f27dd7f6246131d559058d6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8acfbd50-0ba8-1490-cbe0-395fc7e3bafa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_norm_nsmul_le (ξ : 𝕊) {n : ℕ} (hn : 0 < n) :
    ∃ j ∈ Icc 1 n, ‖j • ξ‖ ≤ T / ↑(n + 1) := by
  apply NormedAddCommGroup.exists_norm_nsmul_le (μ := volume) ξ hn
  rw [AddCircle.measure_univ, volume_closedBall, ← ENNReal.ofReal_nsmul,
    mul_div_cancel' _ two_ne_zero, min_eq_right (div_le_self hT.out.le $ by simp), nsmul_eq_mul,
    mul_div_cancel' _ (Nat.cast_ne_zero.mpr n.succ_ne_zero)]

end AddCircle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante1cff0a1d4564b137da9e3c70e349e0010441778823453d194ee25d38f5d45c6.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f747a80f7f8ad68f70e282589f3fd3fd57b1817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
