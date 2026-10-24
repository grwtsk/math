# blimsup_thickening_mul_ae_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b167fb4-4277-3525-a414-bd282923e63d",
  "kind": "theorem",
  "lexical_name": "blimsup_thickening_mul_ae_eq_aux",
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
  "slug": "blimsup-thickening-mul-ae-eq-aux--f79fb6c5262f43fccbd8fc6f",
  "source": {
    "blob": "f7f9516a9581c10b050f24cc17c5deaf49f8f961",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 250,
    "path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f79fb6c5262f43fccbd8fc6fecea2c4f1271c694ced161e21f18a171dcddf2b3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b167fb4-4277-3525-a414-bd282923e63d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem blimsup_thickening_mul_ae_eq_aux (p : ℕ → Prop) (s : ℕ → Set α) {M : ℝ} (hM : 0 < M)
    (r : ℕ → ℝ) (hr : Tendsto r atTop (𝓝 0)) (hr' : ∀ᶠ i in atTop, p i → 0 < r i) :
    (blimsup (fun i => thickening (M * r i) (s i)) atTop p : Set α) =ᵐ[μ]
      (blimsup (fun i => thickening (r i) (s i)) atTop p : Set α) := by
  have h₁ := blimsup_cthickening_ae_eq_blimsup_thickening (s := s) μ hr hr'
  have h₂ := blimsup_cthickening_mul_ae_eq μ p s hM r hr
  replace hr : Tendsto (fun i => M * r i) atTop (𝓝 0) := by convert hr.const_mul M; simp
  replace hr' : ∀ᶠ i in atTop, p i → 0 < M * r i := hr'.mono fun i hi hip ↦ mul_pos hM (hi hip)
  have h₃ := blimsup_cthickening_ae_eq_blimsup_thickening (s := s) μ hr hr'
  exact h₃.symm.trans (h₂.trans h₁)

/-- Given a sequence of subsets `sᵢ` of a metric space, together with a sequence of radii `rᵢ`
such that `rᵢ → 0`, the set of points which belong to infinitely many of the
`rᵢ`-thickenings of `sᵢ` is unchanged almost everywhere for a uniformly locally doubling measure if
the `rᵢ` are all scaled by a positive constant.

This lemma is a generalisation of Lemma 9 appearing on page 217 of
[J.W.S. Cassels, *Some metrical theorems in Diophantine approximation. I*](cassels1950).

See also `blimsup_cthickening_mul_ae_eq`.

NB: The `: Set α` type ascription is present because of
https://github.com/leanprover-community/mathlib/issues/16932. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variant611dcbf6d42a25a3fae7ead0ac6e8f0b4f97277ae4b2519f8fa8ce63287fe035.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7f9516a9581c10b050f24cc17c5deaf49f8f961` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
