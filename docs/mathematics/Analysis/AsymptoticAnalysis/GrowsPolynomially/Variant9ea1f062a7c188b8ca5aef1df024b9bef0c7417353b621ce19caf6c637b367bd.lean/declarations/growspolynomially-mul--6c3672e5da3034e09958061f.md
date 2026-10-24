# GrowsPolynomially.mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4cac140-c6ff-358b-9360-2e83bc6c12c3",
  "kind": "lemma",
  "lexical_name": "GrowsPolynomially.mul",
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
  "slug": "growspolynomially-mul--6c3672e5da3034e09958061f",
  "source": {
    "blob": "ebc4480187c09e3283587c150206252ceb767a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 281,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c3672e5da3034e09958061fa0206de32c8ff99727b8c2e410ce8a1a3552813f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4cac140-c6ff-358b-9360-2e83bc6c12c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma GrowsPolynomially.mul {f g : ℝ → ℝ} (hf : GrowsPolynomially f)
    (hg : GrowsPolynomially g) : GrowsPolynomially fun x => f x * g x := by
  suffices GrowsPolynomially fun x => |f x| * |g x| by
    cases eventually_atTop_nonneg_or_nonpos hf with
    | inl hf' =>
      cases eventually_atTop_nonneg_or_nonpos hg with
      | inl hg' =>
        have hmain : (fun x => f x * g x) =ᶠ[atTop] fun x => |f x| * |g x| := by
          filter_upwards [hf', hg'] with x hx₁ hx₂
          rw [abs_of_nonneg hx₁, abs_of_nonneg hx₂]
        rwa [iff_eventuallyEq hmain]
      | inr hg' =>
        have hmain : (fun x => f x * g x) =ᶠ[atTop] fun x => -|f x| * |g x| := by
          filter_upwards [hf', hg'] with x hx₁ hx₂
          simp [abs_of_nonneg hx₁, abs_of_nonpos hx₂]
        simp only [iff_eventuallyEq hmain, neg_mul]
        exact this.neg
    | inr hf' =>
      cases eventually_atTop_nonneg_or_nonpos hg with
      | inl hg' =>
        have hmain : (fun x => f x * g x) =ᶠ[atTop] fun x => -|f x| * |g x| := by
          filter_upwards [hf', hg'] with x hx₁ hx₂
          rw [abs_of_nonpos hx₁, abs_of_nonneg hx₂, neg_neg]
        simp only [iff_eventuallyEq hmain, neg_mul]
        exact this.neg
      | inr hg' =>
        have hmain : (fun x => f x * g x) =ᶠ[atTop] fun x => |f x| * |g x| := by
          filter_upwards [hf', hg'] with x hx₁ hx₂
          simp [abs_of_nonpos hx₁, abs_of_nonpos hx₂]
        simp only [iff_eventuallyEq hmain]
        exact this
  intro b hb
  have hf := hf.abs b hb
  have hg := hg.abs b hb
  obtain ⟨c₁, hc₁_mem, c₂, hc₂_mem, hf⟩ := hf
  obtain ⟨c₃, hc₃_mem, c₄, hc₄_mem, hg⟩ := hg
  refine ⟨c₁ * c₃, by change 0 < c₁ * c₃; positivity, ?_⟩
  refine ⟨c₂ * c₄, by change 0 < c₂ * c₄; positivity, ?_⟩
  filter_upwards [hf, hg] with x hf hg
  intro u hu
  refine ⟨?lb, ?ub⟩
  case lb => calc
    c₁ * c₃ * (|f x| * |g x|) = (c₁ * |f x|) * (c₃ * |g x|) := by ring
    _ ≤ |f u| * |g u| := by
           gcongr
           · exact (hf u hu).1
           · exact (hg u hu).1
  case ub => calc
    |f u| * |g u| ≤ (c₂ * |f x|) * (c₄ * |g x|) := by
           gcongr
           · exact (hf u hu).2
           · exact (hg u hu).2
    _ = c₂ * c₄ * (|f x| * |g x|) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebc4480187c09e3283587c150206252ceb767a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
