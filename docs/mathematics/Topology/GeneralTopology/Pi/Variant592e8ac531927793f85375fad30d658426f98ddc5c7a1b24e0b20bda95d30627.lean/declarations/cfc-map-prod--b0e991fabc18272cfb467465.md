# cfcₙ_map_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a3d1b17-348e-438a-e374-623e831e4891",
  "kind": "lemma",
  "lexical_name": "cfcₙ_map_prod",
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
  "slug": "cfc-map-prod--b0e991fabc18272cfb467465",
  "source": {
    "blob": "8b5b47cbad99167804935e812ddde0d06ff67d00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0e991fabc18272cfb46746541a604295b5fa7056463f842a51dec801a8e0650",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a3d1b17-348e-438a-e374-623e831e4891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_map_prod (f : R → R) (a : A) (b : B)
    (hf : ContinuousOn f (quasispectrum R a ∪ quasispectrum R b) := by cfc_cont_tac)
    (hab : pab (a, b) := by cfc_tac) (ha : pa a := by cfc_tac) (hb : pb b := by cfc_tac) :
    cfcₙ f (a, b) = (cfcₙ f a, cfcₙ f b) := by
  by_cases hf₀ : f 0 = 0
  case pos =>
    ext
    case fst =>
      let φ := NonUnitalStarAlgHom.fst S A B
      exact φ.map_cfcₙ f (a, b) (by rwa [Prod.quasispectrum_eq]) hf₀ continuous_fst hab ha
    case snd =>
      let φ := NonUnitalStarAlgHom.snd S A B
      exact φ.map_cfcₙ f (a, b) (by rwa [Prod.quasispectrum_eq]) hf₀ continuous_snd hab hb
  case neg =>
    simpa [cfcₙ_apply_of_not_map_zero _ hf₀] using Prod.mk_zero_zero.symm

end nonunital_prod

section unital_pi

variable {ι R S : Type*} {A : ι → Type*} [CommSemiring R] [StarRing R] [MetricSpace R]
  [IsTopologicalSemiring R] [ContinuousStar R] [CommRing S] [Algebra R S]
  [∀ i, Ring (A i)] [∀ i, Algebra S (A i)] [∀ i, Algebra R (A i)] [∀ i, IsScalarTower R S (A i)]
  [hinst : IsScalarTower R S (∀ i, A i)]
  [∀ i, StarRing (A i)] [∀ i, TopologicalSpace (A i)] {p : (∀ i, A i) → Prop}
  {q : (i : ι) → A i → Prop}
  [ContinuousFunctionalCalculus R (∀ i, A i) p]
  [∀ i, ContinuousFunctionalCalculus R (A i) (q i)]
  [∀ i, ContinuousMap.UniqueHom R (A i)]

include S in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pi/Variant592e8ac531927793f85375fad30d658426f98ddc5c7a1b24e0b20bda95d30627.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b5b47cbad99167804935e812ddde0d06ff67d00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
