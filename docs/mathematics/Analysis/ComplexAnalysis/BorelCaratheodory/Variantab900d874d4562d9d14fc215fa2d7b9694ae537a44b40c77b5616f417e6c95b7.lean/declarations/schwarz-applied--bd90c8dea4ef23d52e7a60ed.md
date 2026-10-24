# schwarz_applied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:511a41e2-78d2-8383-403f-3d9b138b369f",
  "kind": "lemma",
  "lexical_name": "schwarz_applied",
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
  "slug": "schwarz-applied--bd90c8dea4ef23d52e7a60ed",
  "source": {
    "blob": "93a02ec1040d17eb0b2a8a1b2b4ccaa688fbcdfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 74,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd90c8dea4ef23d52e7a60ed089ba5f905a8441f199cdab18ed31177f2bed671",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:511a41e2-78d2-8383-403f-3d9b138b369f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma schwarz_applied (hM : 0 < M) (hf : DifferentiableOn ℂ f (ball 0 R))
    (hf₁ : Set.MapsTo f (ball 0 R) {z | z.re ≤ M}) (hz : z ∈ ball 0 R) (hf₂ : f 0 = 0) :
    ‖f z / (2 * M - f z)‖ ≤ (1 / R) * ‖z‖ := by
  rw [← dist_zero_right, ← dist_zero_right]
  nth_rw 1 [← zero_div (2 * M - f 0), ← hf₂]
  apply dist_le_div_mul_dist_of_mapsTo_ball (R₂ := 1) ?_ (fun x hx ↦ ?_) hz
  · apply hf.div (hf.const_sub _) fun x hx h ↦ ?_
    have := sub_eq_zero.mp h ▸ hf₁ hx
    aesop
  · simpa [hf₂] using
      div_le_one_of_le₀ (norm_le_norm_two_mul_sub hM (hf₁ hx)) (by positivity)

end SchwarzTransform

section BorelCaratheodory

/-- **Borel-Carathéodory theorem** for functions vanishing at the origin.

If `f` is analytic on the open ball `‖z‖ < R`, satisfies `(f z).re ≤ M` for all such `z`,
and `f 0 = 0`, then `‖f z‖ ≤ 2 * M * ‖z‖ / (R - ‖z‖)` for all `‖z‖ < R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variantab900d874d4562d9d14fc215fa2d7b9694ae537a44b40c77b5616f417e6c95b7.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93a02ec1040d17eb0b2a8a1b2b4ccaa688fbcdfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
