# ContinuousFunctionalCalculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8c668c31877cedb12a78996259cf08055949b0bd19e85063409aa07a263edac",
  "kind": "class",
  "lexical_name": "ContinuousFunctionalCalculus",
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
  "slug": "continuousfunctionalcalculus--f373eeb6d985a02984e31e4c",
  "source": {
    "blob": "80944cc700ffac05f1890454cca4432c1bc98d6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f373eeb6d985a02984e31e4c77ca5f8983bb73f671eb1ce7d45b74ff025468c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8c668c31877cedb12a78996259cf08055949b0bd19e85063409aa07a263edac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousFunctionalCalculus (R A : Type*) (p : outParam (A → Prop))
    [CommSemiring R] [StarRing R] [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R]
    [Ring A] [StarRing A] [TopologicalSpace A] [Algebra R A] : Prop where
  predicate_zero : p 0
  [compactSpace_spectrum (a : A) : CompactSpace (spectrum R a)]
  spectrum_nonempty [Nontrivial A] (a : A) (ha : p a) : (spectrum R a).Nonempty
  exists_cfc_of_predicate : ∀ a, p a → ∃ φ : C(spectrum R a, R) →⋆ₐ[R] A,
    Continuous φ ∧ Function.Injective φ ∧ φ ((ContinuousMap.id R).restrict <| spectrum R a) = a ∧
      (∀ f, spectrum R (φ f) = Set.range f) ∧ ∀ f, p (φ f)

-- this instance should not be activated everywhere but it is useful when developing generic API
-- for the continuous functional calculus
scoped[ContinuousFunctionalCalculus]
attribute [instance] ContinuousFunctionalCalculus.compactSpace_spectrum

/-- A class guaranteeing that the continuous functional calculus is uniquely determined by the
properties that it is a continuous star algebra homomorphism mapping the (restriction of) the
identity to `a`. This is the necessary tool used to establish `cfcHom_comp` and the more common
variant `cfc_comp`.

This class has instances, which can be found in
`Mathlib/Analysis/CStarAlgebra/ContinuousFunctionalCalculus/Unique.lean`, in each of the common
cases `ℂ`, `ℝ` and `ℝ≥0` as a consequence of the Stone-Weierstrass theorem.

This class is separate from `ContinuousFunctionalCalculus` primarily because we will later use
`SpectrumRestricts` to derive an instance of `ContinuousFunctionalCalculus` on a scalar subring
from one on a larger ring (i.e., to go from a continuous functional calculus over `ℂ` for normal
elements to one over `ℝ` for selfadjoint elements), and proving this additional property is
preserved would be burdensome or impossible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unital/Variant685d3d5dc1320ce97c9393281ba9d03c3d21d6c5aeaa2db90e2920a5ac52a4f2.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80944cc700ffac05f1890454cca4432c1bc98d6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
