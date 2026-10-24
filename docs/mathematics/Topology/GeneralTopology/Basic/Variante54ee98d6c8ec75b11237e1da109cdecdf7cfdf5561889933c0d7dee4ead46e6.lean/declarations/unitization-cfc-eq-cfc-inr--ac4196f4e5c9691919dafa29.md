# Unitization.cfcₙ_eq_cfc_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8ae7eed-7724-491e-33e7-db7d7f0bf79a",
  "kind": "lemma",
  "lexical_name": "Unitization.cfcₙ_eq_cfc_inr",
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
  "slug": "unitization-cfc-eq-cfc-inr--ac4196f4e5c9691919dafa29",
  "source": {
    "blob": "a43fe3f23391562543d0f0e972062f6c7d0dc19d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 465,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac4196f4e5c9691919dafa29830d62ebcde273f3b6a1e1b91dd56f948968020f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8ae7eed-7724-491e-33e7-db7d7f0bf79a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 465–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitization.cfcₙ_eq_cfc_inr {R : Type*} [Semifield R] [StarRing R] [MetricSpace R]
    [IsTopologicalSemiring R] [ContinuousStar R] [Module R A] [IsScalarTower R A A]
    [SMulCommClass R A A] [Algebra R ℂ] [IsScalarTower R ℂ A]
    {p : A → Prop} {p' : A⁺¹ → Prop} [NonUnitalContinuousFunctionalCalculus R A p]
    [ContinuousFunctionalCalculus R A⁺¹ p']
    [ContinuousMapZero.UniqueHom R (Unitization ℂ A)]
    (hp : ∀ {a : A}, p' (a : A⁺¹) ↔ p a) (a : A) (f : R → R) (hf₀ : f 0 = 0 := by cfc_zero_tac) :
    cfcₙ f a = cfc f (a : A⁺¹) := by
  by_cases h : ContinuousOn f (σₙ R a) ∧ p a
  · obtain ⟨hf, ha⟩ := h
    rw [← cfcₙ_eq_cfc (quasispectrum_inr_eq R ℂ a ▸ hf)]
    exact (inrNonUnitalStarAlgHom ℂ A).map_cfcₙ f a
  · obtain (hf | ha) := not_and_or.mp h
    · rw [cfcₙ_apply_of_not_continuousOn a hf, inr_zero,
        cfc_apply_of_not_continuousOn _ (quasispectrum_eq_spectrum_inr' R ℂ a ▸ hf)]
    · rw [cfcₙ_apply_of_not_predicate a ha, inr_zero,
        cfc_apply_of_not_predicate _ (not_iff_not.mpr hp |>.mpr ha)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante54ee98d6c8ec75b11237e1da109cdecdf7cfdf5561889933c0d7dee4ead46e6.lean#L465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43fe3f23391562543d0f0e972062f6c7d0dc19d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
