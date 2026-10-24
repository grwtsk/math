# rpow_abs_le_mul_max_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7cbcda4-66aa-e0ce-9e17-a38a93e74863",
  "kind": "lemma",
  "lexical_name": "rpow_abs_le_mul_max_exp",
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
  "slug": "rpow-abs-le-mul-max-exp--3c6c2a560255cb157b991f5c",
  "source": {
    "blob": "883c2b712afc8fbc98050e857165c78eb6d6840c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c6c2a560255cb157b991f5cfceb9511536b4f98c893ff2e929f81ae51a452df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7cbcda4-66aa-e0ce-9e17-a38a93e74863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_abs_le_mul_max_exp (x : ℝ) {t p : ℝ} (hp : 0 ≤ p) (ht : t ≠ 0) :
    |x| ^ p ≤ (p / |t|) ^ p * max (exp (t * x)) (exp (- t * x)) := by
  rcases lt_or_gt_of_ne ht with ht_neg | ht_pos
  · rw [abs_of_nonpos ht_neg.le, sup_comm]
    convert rpow_abs_le_mul_max_exp_of_pos x hp (t := -t) (by simp [ht_neg])
    simp
  · rw [abs_of_nonneg ht_pos.le]
    exact rpow_abs_le_mul_max_exp_of_pos x hp ht_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant32404efc91e7d1b01436b9ee96e4f77f16c353646579b57a48b6a828b67e5145.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883c2b712afc8fbc98050e857165c78eb6d6840c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
