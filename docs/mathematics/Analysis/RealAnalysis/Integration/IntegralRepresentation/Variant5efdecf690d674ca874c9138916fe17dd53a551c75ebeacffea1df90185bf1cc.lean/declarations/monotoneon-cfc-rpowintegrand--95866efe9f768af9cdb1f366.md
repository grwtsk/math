# monotoneOn_cfcₙ_rpowIntegrand₀₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e8e0836-342f-05cd-c651-f59c0ad9c08b",
  "kind": "lemma",
  "lexical_name": "monotoneOn_cfcₙ_rpowIntegrand₀₁",
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
  "slug": "monotoneon-cfc-rpowintegrand--95866efe9f768af9cdb1f366",
  "source": {
    "blob": "443f65af5756061d550fe74ea1d2c4e23305be90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 611,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95866efe9f768af9cdb1f36653df040afdfdc209961cc0ceec33e7f098f37d58",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e8e0836-342f-05cd-c651-f59c0ad9c08b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monotoneOn_cfcₙ_rpowIntegrand₀₁ {p : ℝ} {t : ℝ} (hp : p ∈ Ioo 0 1) (ht : 0 < t) :
    MonotoneOn (cfcₙ (rpowIntegrand₀₁ p t)) (Ici (0 : A)) := by
  intro a (ha : 0 ≤ a) b (hb : 0 ≤ b) hab
  calc
    _ = t ^ ((p : ℝ) - 1) • cfcₙ (rpowIntegrand₀₁ p 1) (t⁻¹ • a) := by
      rw [cfcₙ_rpowIntegrand₀₁_eq_cfcₙ_rpowIntegrand₀₁_one hp ht a ha]
    _ ≤ t ^ ((p : ℝ) - 1) • cfcₙ (rpowIntegrand₀₁ p 1) (t⁻¹ • b) := by
      gcongr
      unfold rpowIntegrand₀₁
      simp only [Real.one_rpow, one_mul, inv_one]
      refine CFC.monotoneOn_one_sub_one_add_inv_real
        (?_ : 0 ≤ t⁻¹ • a) (?_ : 0 ≤ t⁻¹ • b) (by gcongr)
      all_goals positivity
    _ = cfcₙ (rpowIntegrand₀₁ p t) b := by
      rw [cfcₙ_rpowIntegrand₀₁_eq_cfcₙ_rpowIntegrand₀₁_one hp ht b hb]

open CStarAlgebra in
/-- `rpowIntegrand₀₁ p t` is operator concave for all `p ∈ Ioo 0 1` and all `0 < t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variant5efdecf690d674ca874c9138916fe17dd53a551c75ebeacffea1df90185bf1cc.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `443f65af5756061d550fe74ea1d2c4e23305be90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
