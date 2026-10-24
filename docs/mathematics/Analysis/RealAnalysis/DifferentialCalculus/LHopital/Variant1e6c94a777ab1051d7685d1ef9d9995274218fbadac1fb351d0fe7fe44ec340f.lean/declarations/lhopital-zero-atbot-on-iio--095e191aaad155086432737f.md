# lhopital_zero_atBot_on_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3a3e168-7353-9e17-91fa-df50477b4f21",
  "kind": "theorem",
  "lexical_name": "lhopital_zero_atBot_on_Iio",
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
  "slug": "lhopital-zero-atbot-on-iio--095e191aaad155086432737f",
  "source": {
    "blob": "228345c9479667b9da4cc94ce7fb391fe0fa6e81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:095e191aaad155086432737f87fa80e892563d6c5c16600c6f82dbd83009ddc8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3a3e168-7353-9e17-91fa-df50477b4f21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lhopital_zero_atBot_on_Iio (hff' : ∀ x ∈ Iio a, HasDerivAt f (f' x) x)
    (hgg' : ∀ x ∈ Iio a, HasDerivAt g (g' x) x) (hg' : ∀ x ∈ Iio a, g' x ≠ 0)
    (hfbot : Tendsto f atBot (𝓝 0)) (hgbot : Tendsto g atBot (𝓝 0))
    (hdiv : Tendsto (fun x => f' x / g' x) atBot l) : Tendsto (fun x => f x / g x) atBot l := by
  -- Here, we essentially compose by `Neg.neg`. The following is mostly technical details.
  have hdnf : ∀ x ∈ -Iio a, HasDerivAt (f ∘ Neg.neg) (f' (-x) * -1) x := fun x hx =>
    comp x (hff' (-x) hx) (hasDerivAt_neg x)
  have hdng : ∀ x ∈ -Iio a, HasDerivAt (g ∘ Neg.neg) (g' (-x) * -1) x := fun x hx =>
    comp x (hgg' (-x) hx) (hasDerivAt_neg x)
  rw [neg_Iio] at hdnf
  rw [neg_Iio] at hdng
  have := lhopital_zero_atTop_on_Ioi hdnf hdng
    (by
      intro x hx h
      apply hg' _ (by rw [← neg_Iio] at hx; exact hx)
      rwa [mul_comm, ← neg_eq_neg_one_mul, neg_eq_zero] at h)
    (hfbot.comp tendsto_neg_atTop_atBot) (hgbot.comp tendsto_neg_atTop_atBot)
    (by
      simp only [mul_one, mul_neg, neg_div_neg_eq]
      exact (hdiv.comp tendsto_neg_atTop_atBot))
  have := this.comp tendsto_neg_atBot_atTop
  unfold Function.comp at this
  simpa only [neg_neg]

end HasDerivAt

namespace deriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LHopital/Variant1e6c94a777ab1051d7685d1ef9d9995274218fbadac1fb351d0fe7fe44ec340f.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `228345c9479667b9da4cc94ce7fb391fe0fa6e81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
