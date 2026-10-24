# iIndepFun.of_precomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91d60120-b239-e66c-974c-c8e57aed48a9",
  "kind": "lemma",
  "lexical_name": "iIndepFun.of_precomp",
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
  "slug": "iindepfun-of-precomp--f86180ac81cb700f9ee16c39",
  "source": {
    "blob": "dd9f6056ca677b04410cddb6e833f2e207564ab7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 767,
    "line": 749,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant269c90032d81e9495fd77a294a48fc65d5ff6fb1973fd8d9d1c4c6a949bb4454.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f86180ac81cb700f9ee16c398d6d65a589b4cedae155602c41ad80fb8d81f93f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant269c90032d81e9495fd77a294a48fc65d5ff6fb1973fd8d9d1c4c6a949bb4454.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91d60120-b239-e66c-974c-c8e57aed48a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 749–767.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun.of_precomp {g : ι' → ι} (hg : g.Surjective)
    (h : iIndepFun (m := fun i ↦ m (g i)) (fun i ↦ f (g i)) μ) : iIndepFun f μ := by
  have : IsProbabilityMeasure μ := h.isProbabilityMeasure
  nontriviality ι
  have := hg.nontrivial
  classical
  rw [iIndepFun_iff] at h ⊢
  intro t s hs
  have A (x) : g (Function.invFun g x) = x := Function.rightInverse_invFun hg x
  have : ∀ i ∈ Finset.image (Function.invFun g) t,
    @MeasurableSet _ (MeasurableSpace.comap (f <| g i) (m <| g i)) (s <| g i) := by
    intro i hi
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp hi
    simpa [A] using (A j).symm ▸ hs j hj
  have eq : ∏ i ∈ Finset.image (Function.invFun g) t, μ (s (g i)) = ∏ i ∈ t, μ (s i) := by
    rw [Finset.prod_image (fun x hx y hy h => ?_), Finset.prod_congr rfl (fun x _ => by rw [A])]
    rw [←A x, ← A y, h]
  simpa [A, eq] using h (t.image (Function.invFun g)) (f' := fun i ↦ s (g i)) this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant269c90032d81e9495fd77a294a48fc65d5ff6fb1973fd8d9d1c4c6a949bb4454.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant269c90032d81e9495fd77a294a48fc65d5ff6fb1973fd8d9d1c4c6a949bb4454.lean#L749).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd9f6056ca677b04410cddb6e833f2e207564ab7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
