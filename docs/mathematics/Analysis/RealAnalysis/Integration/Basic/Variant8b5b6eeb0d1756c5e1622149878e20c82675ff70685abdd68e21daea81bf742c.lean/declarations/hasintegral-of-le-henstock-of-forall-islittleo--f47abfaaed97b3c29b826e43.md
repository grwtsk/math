# HasIntegral.of_le_Henstock_of_forall_isLittleO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d86981a-55a4-1c56-3374-af7a3bee91f3",
  "kind": "theorem",
  "lexical_name": "HasIntegral.of_le_Henstock_of_forall_isLittleO",
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
  "slug": "hasintegral-of-le-henstock-of-forall-islittleo--f47abfaaed97b3c29b826e43",
  "source": {
    "blob": "7e6b725797250d205876f963301327eb6bbc04ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 884,
    "line": 860,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f47abfaaed97b3c29b826e43d242422316723e86a0a5ebf8e0c17463f7e0b196",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d86981a-55a4-1c56-3374-af7a3bee91f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 860–884.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasIntegral.of_le_Henstock_of_forall_isLittleO (hl : l ≤ Henstock) (B : ι →ᵇᵃ[I] ℝ)
    (hB0 : ∀ J, 0 ≤ B J) (g : ι →ᵇᵃ[I] F) (s : Set ℝⁿ) (hs : s.Countable)
    (H₁ : ∀ (c : ℝ≥0), ∀ x ∈ Box.Icc I ∩ s, ∀ ε > (0 : ℝ),
      ∃ δ > 0, ∀ J ≤ I, Box.Icc J ⊆ Metric.closedBall x δ → x ∈ Box.Icc J →
        (l.bDistortion → J.distortion ≤ c) → dist (vol J (f x)) (g J) ≤ ε)
    (H₂ : ∀ (c : ℝ≥0), ∀ x ∈ Box.Icc I \ s, ∀ ε > (0 : ℝ),
      ∃ δ > 0, ∀ J ≤ I, Box.Icc J ⊆ Metric.closedBall x δ → x ∈ Box.Icc J →
        (l.bDistortion → J.distortion ≤ c) → dist (vol J (f x)) (g J) ≤ ε * B J) :
    HasIntegral I l f vol (g I) :=
  have A : l.bHenstock := Bool.eq_true_of_true_le hl.2.1
  HasIntegral.of_bRiemann_eq_false_of_forall_isLittleO (Bool.eq_false_of_le_false hl.1) B hB0 _ s hs
    (fun _ => A) H₁ <| by simpa only [A, true_imp_iff] using H₂

/-- Suppose that there exists a nonnegative box-additive function `B` with the following property.

For every `c : ℝ≥0`, a point `x ∈ I.Icc`, and a positive `ε` there exists `δ > 0` such that for any
box `J ≤ I` such that

- `J.Icc ⊆ Metric.closedBall x δ`;
- if `l.bDistortion` (i.e., `l = ⊥`), then the distortion of `J` is less than or equal to `c`,

the distance between the term `vol J (f x)` of an integral sum corresponding to `J` and `g J` is
less than or equal to `ε * B J`.

Then `f` is McShane integrable on `I` with integral `g I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant8b5b6eeb0d1756c5e1622149878e20c82675ff70685abdd68e21daea81bf742c.lean#L860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6b725797250d205876f963301327eb6bbc04ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
