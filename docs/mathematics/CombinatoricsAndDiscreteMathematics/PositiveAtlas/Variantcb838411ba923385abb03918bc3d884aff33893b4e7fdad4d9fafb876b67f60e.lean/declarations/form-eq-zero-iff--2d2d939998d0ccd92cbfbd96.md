# form_eq_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e64b32d1-c0e3-3c5c-900e-d6c1815c694a",
  "kind": "theorem",
  "lexical_name": "form_eq_zero_iff",
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
  "slug": "form-eq-zero-iff--2d2d939998d0ccd92cbfbd96",
  "source": {
    "blob": "5e00fade377068d00e7d2d7ba4dac884ef4dc0c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d2d939998d0ccd92cbfbd96019b188cdf0540c44a0296d79e0f8cb191df65a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e64b32d1-c0e3-3c5c-900e-d6c1815c694a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem form_eq_zero_iff (w : FiniteFibreWeights B I) (f : ∀ b, I b → ℝ) :
    w.positiveForm.form f f = 0 ↔ f = 0 := by
  constructor
  · intro h
    have term_nonneg : ∀ b i, 0 ≤ w.weight b i * (f b i * f b i) :=
      fun b i => mul_nonneg (le_of_lt (w.positive b i)) (mul_self_nonneg _)
    have hb := (Finset.sum_eq_zero_iff_of_nonneg (fun b _ =>
      Finset.sum_nonneg (fun i _ => term_nonneg b i))).mp h
    funext b i
    have hi := (Finset.sum_eq_zero_iff_of_nonneg (fun i _ => term_nonneg b i)).mp
      (hb b (Finset.mem_univ b)) i (Finset.mem_univ i)
    have hs := (mul_eq_zero.mp hi).resolve_left (ne_of_gt (w.positive b i))
    exact mul_self_eq_zero.mp hs
  · intro h; subst f; simp [positiveForm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PositiveAtlas/Variantcb838411ba923385abb03918bc3d884aff33893b4e7fdad4d9fafb876b67f60e.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e00fade377068d00e7d2d7ba4dac884ef4dc0c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
