# Continuous.cfcₙ_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6cc7ecd-17a5-d87b-f9f0-0d0fd053b3cc",
  "kind": "theorem",
  "lexical_name": "Continuous.cfcₙ_fun",
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
  "slug": "continuous-cfc-fun--a870405386f5edc3fd6a6ea0",
  "source": {
    "blob": "7f65e7384596d418738f6bc1f56a23ad60c5657a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 686,
    "path": "GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a870405386f5edc3fd6a6ea065367e956730e6cfbd994a69508f20180f917c12",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6cc7ecd-17a5-d87b-f9f0-0d0fd053b3cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 686–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Continuous.cfcₙ_fun [TopologicalSpace X] (f : X → R → R) (a : A)
    (h_cont : Continuous (fun x ↦ ofFun {quasispectrum R a} (f x)))
    (hf : ∀ x, ContinuousOn (f x) (quasispectrum R a) := by cfc_cont_tac)
    (hf0 : ∀ x, f x 0 = 0 := by cfc_zero_tac) :
    Continuous fun x ↦ cfcₙ (f x) a := by
  rw [← continuousOn_univ] at h_cont ⊢
  exact h_cont.cfcₙ_fun (fun x _ ↦ hf x) (fun x _ ↦ hf0 x)

end Generic

section Isometric

variable {R A : Type*} {p : A → Prop} [CommSemiring R] [StarRing R] [MetricSpace R] [Nontrivial R]
    [IsTopologicalSemiring R] [ContinuousStar R] [NonUnitalRing A] [StarRing A]
    [MetricSpace A] [Module R A] [SMulCommClass R A A] [IsScalarTower R A A]
    [NonUnitalIsometricContinuousFunctionalCalculus R A p]

variable (R) in
open UniformOnFun in
open scoped NonUnitalContinuousFunctionalCalculus in
/-- The function `f ↦ cfcₙ f a` is Lipschitz with constant 1 with respect to
supremum metric (on `R →ᵤ[{quasispectrum R a}] R`) on those functions which are continuous on
the quasispectrum and map zero to itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuity/Variant344c46785087a120a6c3050916decfcce42c315e1d4762e6057db1ca145701a6.lean#L686).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f65e7384596d418738f6bc1f56a23ad60c5657a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
