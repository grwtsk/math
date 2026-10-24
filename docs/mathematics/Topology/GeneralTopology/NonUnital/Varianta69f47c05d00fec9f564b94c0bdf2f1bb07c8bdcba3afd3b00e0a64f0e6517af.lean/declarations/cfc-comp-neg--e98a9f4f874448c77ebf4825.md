# cfcₙ_comp_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:421f8805-15f9-8919-157c-b4e379683d60",
  "kind": "lemma",
  "lexical_name": "cfcₙ_comp_neg",
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
  "slug": "cfc-comp-neg--e98a9f4f874448c77ebf4825",
  "source": {
    "blob": "ecbfcb91b48ba7065b11578de5927f78b4e8ba41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 563,
    "path": "GRWTSK/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98a9f4f874448c77ebf4825b9e27144f1614b4a7fee43ee9c08e83c1718ca53",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:421f8805-15f9-8919-157c-b4e379683d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_comp_neg (hf : ContinuousOn f ((- ·) '' (σₙ R a)) := by cfc_cont_tac)
    (h0 : f 0 = 0 := by cfc_zero_tac) (ha : p a := by cfc_tac) :
    cfcₙ (f <| - ·) a = cfcₙ f (-a) := by
  rw [cfcₙ_comp' .., cfcₙ_neg_id _]

end Neg

section Order

section Semiring

variable {R A : Type*} {p : A → Prop} [CommSemiring R] [PartialOrder R] [Nontrivial R]
variable [StarRing R] [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R]
variable [ContinuousSqrt R] [StarOrderedRing R] [NoZeroDivisors R]
variable [TopologicalSpace A] [NonUnitalRing A] [StarRing A] [PartialOrder A] [StarOrderedRing A]
variable [Module R A] [IsScalarTower R A A] [SMulCommClass R A A]
variable [NonUnitalContinuousFunctionalCalculus R A p]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecbfcb91b48ba7065b11578de5927f78b4e8ba41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
