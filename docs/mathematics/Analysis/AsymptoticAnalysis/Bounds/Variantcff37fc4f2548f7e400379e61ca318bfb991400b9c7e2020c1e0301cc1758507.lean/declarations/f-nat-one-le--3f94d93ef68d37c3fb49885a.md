# F_nat_one_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:606768f4-c00c-3da9-d223-657a3eeb61fd",
  "kind": "lemma",
  "lexical_name": "F_nat_one_le",
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
  "slug": "f-nat-one-le--3f94d93ef68d37c3fb49885a",
  "source": {
    "blob": "1fccd6ce38c5a3fa54d9987f1d899a126fc157fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 166,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f94d93ef68d37c3fb49885adfa085ac9166d439f26f19573f6480c1e1e41129",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:606768f4-c00c-3da9-d223-657a3eeb61fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma F_nat_one_le {a : ℝ} (ha : 0 ≤ a) {t : ℝ} (ht : 0 < t) :
    ‖F_nat 1 a t‖ ≤ rexp (-π * (a ^ 2 + 1) * t) / (1 - rexp (-π * t)) ^ 2
      + a * rexp (-π * a ^ 2 * t) / (1 - rexp (-π * t)) := by
  refine tsum_of_norm_bounded ?_ (f_le_g_nat 1 ha ht)
  unfold g_nat
  simp_rw [pow_one, add_mul]
  apply HasSum.add
  · have h0' : ‖rexp (-π * t)‖ < 1 := by
      simpa only [norm_eq_abs, abs_exp] using exp_lt_aux ht
    convert (hasSum_coe_mul_geometric_of_norm_lt_one h0').mul_left (exp (-π * a ^ 2 * t)) using 1
    · ext1 n
      rw [mul_comm (exp _), ← Real.exp_nat_mul, mul_assoc (n : ℝ), ← Real.exp_add]
      ring_nf
    · rw [mul_add, add_mul, mul_one, exp_add, mul_div_assoc]
  · convert (hasSum_geometric_of_lt_one (exp_pos _).le <| exp_lt_aux ht).mul_left _ using 1
    ext1 n
    rw [← Real.exp_nat_mul, mul_assoc _ (exp _), ← Real.exp_add]
    ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fccd6ce38c5a3fa54d9987f1d899a126fc157fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
