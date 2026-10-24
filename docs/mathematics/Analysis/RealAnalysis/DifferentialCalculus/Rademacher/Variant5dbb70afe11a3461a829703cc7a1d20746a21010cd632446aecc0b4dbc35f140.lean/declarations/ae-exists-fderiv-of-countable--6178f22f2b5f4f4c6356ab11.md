# ae_exists_fderiv_of_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fadad992ff493ae0e39a7b16b8291d8b7b75caff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1749517a-490b-7568-acec-bb39373c886e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e93e8635-9389-6a91-884b-ab2fc39fbd2e",
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
  "slug": "ae-exists-fderiv-of-countable--6178f22f2b5f4f4c6356ab11",
  "source": {
    "blob": "fadad992ff493ae0e39a7b16b8291d8b7b75caff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 247,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6178f22f2b5f4f4c6356ab11b414839918fb9812571707671696ecea553f70ab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e93e8635-9389-6a91-884b-ab2fc39fbd2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–265.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rademacher/Variant5dbb70afe11a3461a829703cc7a1d20746a21010cd632446aecc0b4dbc35f140.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fadad992ff493ae0e39a7b16b8291d8b7b75caff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
