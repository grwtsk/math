# hasSum_qExpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a366ffb0-999d-cd24-bd08-e00dc6da75a4",
  "kind": "lemma",
  "lexical_name": "hasSum_qExpansion",
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
  "slug": "hassum-qexpansion--6eb1636067ae0267e6fd157f",
  "source": {
    "blob": "a5d9b086553b7adc6f67e3dc39daeb98c9fba044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 202,
    "path": "GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eb1636067ae0267e6fd157f027562b314b530152bcf79c06932f7d61df6a07c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a366ffb0-999d-cd24-bd08-e00dc6da75a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_qExpansion {f : ℍ → ℂ} (hh : 0 < h)
    (hfper : Periodic (f ∘ ofComplex) h) (hfhol : MDiff f) (hfbdd : IsBoundedAtImInfty f)
    (τ : ℍ) : HasSum (fun m : ℕ ↦ (qExpansion h f).coeff m • 𝕢 h τ ^ m) (f τ) := by
  have : ‖𝕢 h τ‖ < 1 := Periodic.norm_qParam_lt_one hh τ.im_pos
  simpa [eq_cuspFunction τ hh.ne' hfper] using
    hasSum_qExpansion_of_norm_lt hh hfper hfhol hfbdd this

variable (h) in
/--
The `q`-expansion of a function on the upper half plane, bundled as a `FormalMultilinearSeries`.

TODO: Maybe get rid of this and instead define a general API for converting `PowerSeries` to
`FormalMultilinearSeries`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d9b086553b7adc6f67e3dc39daeb98c9fba044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
