# ae_exists_fderiv_of_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca04ec81-2ed4-123e-a7eb-0ee22da486af",
  "kind": "theorem",
  "lexical_name": "ae_exists_fderiv_of_countable",
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
  "slug": "ae-exists-fderiv-of-countable--8eb01592ad953707397afe63",
  "source": {
    "blob": "eefc47f46ea17a2ed77b12d9df7e92450bdf9de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 255,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8eb01592ad953707397afe631a2fdd60a853a5ebf3d9fc802af3500b2b294033",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca04ec81-2ed4-123e-a7eb-0ee22da486af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_exists_fderiv_of_countable
    (hf : LipschitzWith C f) {s : Set E} (hs : s.Countable) :
    ∀ᵐ x ∂μ, ∃ (L : StrongDual ℝ E), ∀ v ∈ s, HasLineDerivAt ℝ f (L v) x v := by
  have B := Basis.ofVectorSpace ℝ E
  have I1 : ∀ᵐ (x : E) ∂μ, ∀ v ∈ s, lineDeriv ℝ f x (∑ i, (B.repr v i) • B i) =
                                  ∑ i, B.repr v i • lineDeriv ℝ f x (B i) :=
    (ae_ball_iff hs).2 (fun v _ ↦ hf.ae_lineDeriv_sum_eq _ _ _)
  have I2 : ∀ᵐ (x : E) ∂μ, ∀ v ∈ s, LineDifferentiableAt ℝ f x v :=
    (ae_ball_iff hs).2 (fun v _ ↦ hf.ae_lineDifferentiableAt v)
  filter_upwards [I1, I2] with x hx h'x
  let L : StrongDual ℝ E :=
    LinearMap.toContinuousLinearMap (B.constr ℝ (fun i ↦ lineDeriv ℝ f x (B i)))
  refine ⟨L, fun v hv ↦ ?_⟩
  have J : L v = lineDeriv ℝ f x v := by convert! (hx v hv).symm <;> simp [L, B.sum_repr v]
  simpa [J] using (h'x v hv).hasLineDerivAt

omit [MeasurableSpace E] in
/-- If a Lipschitz functions has line derivatives in a dense set of directions, all of them given by
a single continuous linear map `L`, then it admits `L` as Fréchet derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant07c20a6cd7d93aa02306d118e1e0d94967292952c5b77ccc06c7acc04b40aaff.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefc47f46ea17a2ed77b12d9df7e92450bdf9de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
