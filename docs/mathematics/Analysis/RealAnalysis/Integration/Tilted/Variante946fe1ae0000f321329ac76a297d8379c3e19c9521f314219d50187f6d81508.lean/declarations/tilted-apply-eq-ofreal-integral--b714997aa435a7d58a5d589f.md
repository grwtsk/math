# tilted_apply_eq_ofReal_integral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e085c39-9348-0d06-ca97-9bd2fbb6dead",
  "kind": "lemma",
  "lexical_name": "tilted_apply_eq_ofReal_integral'",
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
  "slug": "tilted-apply-eq-ofreal-integral--b714997aa435a7d58a5d589f",
  "source": {
    "blob": "204629feb7439c95a384b217e77a057cf8158cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b714997aa435a7d58a5d589f784ebe6fd80fcd30a536938220e0a78ecb588e15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e085c39-9348-0d06-ca97-9bd2fbb6dead`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tilted_apply_eq_ofReal_integral' {s : Set α} (f : α → ℝ) (hs : MeasurableSet s) :
    μ.tilted f s = ENNReal.ofReal (∫ a in s, exp (f a) / ∫ x, exp (f x) ∂μ ∂μ) := by
  by_cases hf : Integrable (fun x ↦ exp (f x)) μ
  · rw [tilted_apply' _ _ hs, ← ofReal_integral_eq_lintegral_ofReal]
    · exact hf.integrableOn.div_const _
    · exact ae_of_all _ (fun _ ↦ by positivity)
  · simp only [hf, not_false_eq_true, tilted_of_not_integrable, Measure.coe_zero,
      Pi.zero_apply, integral_undef hf, div_zero, integral_zero, ENNReal.ofReal_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Tilted/Variante946fe1ae0000f321329ac76a297d8379c3e19c9521f314219d50187f6d81508.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `204629feb7439c95a384b217e77a057cf8158cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
