# mellin_convergent_iff_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a1334cf635cc67378b0eec1a0bce7ba0190ff3e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83e784a1-3694-5588-c21b-b4f68c44f12f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7a8c797c-a504-d1bd-b5e7-ee6097a449c3",
  "kind": "theorem",
  "lexical_name": "mellin_convergent_iff_norm",
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
  "slug": "mellin-convergent-iff-norm--8119891ab03a92839a4727ae",
  "source": {
    "blob": "a1334cf635cc67378b0eec1a0bce7ba0190ff3e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8119891ab03a92839a4727ae00df9d232cc7587d72a7a4ac9207cfac0794f988",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a8c797c-a504-d1bd-b5e7-ee6097a449c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_convergent_iff_norm [NormedSpace ℂ E] {f : ℝ → E} {T : Set ℝ} (hT : T ⊆ Ioi 0)
    (hT' : MeasurableSet T) (hfc : AEStronglyMeasurable f <| volume.restrict <| Ioi 0) {s : ℂ} :
    IntegrableOn (fun t : ℝ => (t : ℂ) ^ (s - 1) • f t) T ↔
      IntegrableOn (fun t : ℝ => t ^ (s.re - 1) * ‖f t‖) T := by
  have : AEStronglyMeasurable (fun t : ℝ => (t : ℂ) ^ (s - 1) • f t) (volume.restrict T) := by
    refine' ((ContinuousAt.continuousOn _).aestronglyMeasurable hT').smul (hfc.mono_set hT)
    exact fun t ht => continuousAt_ofReal_cpow_const _ _ (Or.inr <| ne_of_gt (hT ht))
  rw [IntegrableOn, ← integrable_norm_iff this, ← IntegrableOn]
  refine' integrableOn_congr_fun (fun t ht => _) hT'
  simp_rw [norm_smul, Complex.norm_eq_abs, abs_cpow_eq_rpow_re_of_pos (hT ht), sub_re, one_re]
#align mellin_convergent_iff_norm mellin_convergent_iff_norm

/-- If `f` is a locally integrable real-valued function which is `O(x ^ (-a))` at `∞`, then for any
`s < a`, its Mellin transform converges on some neighbourhood of `+∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variantbd274c9af2bccd6132c7f27688eddf7a31258bb9da6efd518bb027039cd6a76c.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1334cf635cc67378b0eec1a0bce7ba0190ff3e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
