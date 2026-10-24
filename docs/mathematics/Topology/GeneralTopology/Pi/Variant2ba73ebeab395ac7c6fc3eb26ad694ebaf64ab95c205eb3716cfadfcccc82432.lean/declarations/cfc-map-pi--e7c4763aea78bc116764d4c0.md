# cfcₙ_map_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d8dfa762b889a904022ebf981a55c75a8f070bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76b35b4c-b4e3-d750-387e-baf9c1199e1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fd819b1-2c81-c946-b496-eb051def2176",
  "kind": "lemma",
  "lexical_name": "cfcₙ_map_pi",
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
  "slug": "cfc-map-pi--e7c4763aea78bc116764d4c0",
  "source": {
    "blob": "9d8dfa762b889a904022ebf981a55c75a8f070bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7c4763aea78bc116764d4c074864cf4c1f7694e1d37afe8c157923f0450875a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fd819b1-2c81-c946-b496-eb051def2176`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_map_pi (f : R → R) (a : ∀ i, A i)
    (hf : ContinuousOn f (⋃ i, quasispectrum R (a i)) := by cfc_cont_tac)
    (ha : p a := by cfc_tac) (ha' : ∀ i, q i (a i) := by cfc_tac) :
    cfcₙ f a = fun i => cfcₙ f (a i) := by
  cases isEmpty_or_nonempty ι with
  | inr h =>
    by_cases hf₀ : f 0 = 0
    · ext i
      let φ := Pi.evalNonUnitalStarAlgHom S A i
      exact φ.map_cfcₙ f a (by rwa [Pi.quasispectrum_eq]) hf₀ (continuous_apply i) ha (ha' i)
    · simp only [cfcₙ_apply_of_not_map_zero _ hf₀, Pi.zero_def]
  | inl h =>
    exact Subsingleton.elim _ _

end nonunital_pi

section nonunital_prod

variable {A B R S : Type*} [CommSemiring R] [CommRing S] [Nontrivial R] [StarRing R]
  [MetricSpace R] [IsTopologicalSemiring R] [ContinuousStar R] [Algebra R S] [NonUnitalRing A]
  [NonUnitalRing B] [Module S A] [Module R A] [Module R B] [Module S B]
  [SMulCommClass R A A] [SMulCommClass R B B] [IsScalarTower R A A] [IsScalarTower R B B]
  [StarRing A] [StarRing B] [TopologicalSpace A] [TopologicalSpace B]
  [IsScalarTower R S A] [IsScalarTower R S B]
  {pab : A × B → Prop} {pa : A → Prop} {pb : B → Prop}
  [NonUnitalContinuousFunctionalCalculus R (A × B) pab]
  [NonUnitalContinuousFunctionalCalculus R A pa]
  [NonUnitalContinuousFunctionalCalculus R B pb]
  [ContinuousMapZero.UniqueHom R A] [ContinuousMapZero.UniqueHom R B]

include S in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d8dfa762b889a904022ebf981a55c75a8f070bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
