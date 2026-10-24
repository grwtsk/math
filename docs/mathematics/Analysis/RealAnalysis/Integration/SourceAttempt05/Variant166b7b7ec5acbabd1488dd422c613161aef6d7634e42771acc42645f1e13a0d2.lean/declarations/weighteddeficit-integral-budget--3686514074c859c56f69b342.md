# weightedDeficit_integral_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddc8c2e0-5c08-a722-5c36-7d65fd9771ee",
  "kind": "theorem",
  "lexical_name": "weightedDeficit_integral_budget",
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
  "slug": "weighteddeficit-integral-budget--3686514074c859c56f69b342",
  "source": {
    "blob": "abde6ddf92f3fe19b3fd6d529e4699a561969757",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 140,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3686514074c859c56f69b342c76f070cc12a8ec56d22e7c95c7d63bc4c962ecd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddc8c2e0-5c08-a722-5c36-7d65fd9771ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedDeficit_integral_budget {C : ℝ → ℝ} {k : ℝ} (hk : 0 ≤ k)
    (hC : Measurable C)
    (hdef : ∀ t : ℝ, 0 < t → 0 ≤ 1-C t ∧ 1-C t ≤ k*t^2) :
    0 ≤ 2*(∫ t : ℝ in Ioi 0, weightedDeficit C t) ∧
      2*(∫ t : ℝ in Ioi 0, weightedDeficit C t) ≤ 36*k := by
  have hn : 0 ≤ ∫ t : ℝ in Ioi 0, weightedDeficit C t := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact (weightedDeficit_bound hdef ht).1
  have hb : (∫ t : ℝ in Ioi 0, weightedDeficit C t) ≤ k*18 := by
    calc
      _ ≤ ∫ t : ℝ in Ioi 0, k*secondMomentIntegrand t := by
        apply integral_mono_ae (weightedDeficit_integrable hC hdef)
          (secondMoment_integrable.const_mul k)
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
        exact (weightedDeficit_bound hdef ht).2
      _ = k*(∫ t : ℝ in Ioi 0, secondMomentIntegrand t) := integral_const_mul _ _
      _ ≤ k*18 := mul_le_mul_of_nonneg_left secondMoment_integral_le hk
  constructor <;> nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt05/Variant166b7b7ec5acbabd1488dd422c613161aef6d7634e42771acc42645f1e13a0d2.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abde6ddf92f3fe19b3fd6d529e4699a561969757` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
