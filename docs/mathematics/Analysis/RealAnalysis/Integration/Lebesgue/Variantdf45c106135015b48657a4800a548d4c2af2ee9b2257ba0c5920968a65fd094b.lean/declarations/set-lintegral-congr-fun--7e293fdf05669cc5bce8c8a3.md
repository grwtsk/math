# set_lintegral_congr_fun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3185d59-34f3-d38f-211c-aca94ca6b966",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:970b6b12-adf8-2d9a-8933-fb1d498e6b08",
  "kind": "theorem",
  "lexical_name": "set_lintegral_congr_fun",
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
  "slug": "set-lintegral-congr-fun--7e293fdf05669cc5bce8c8a3",
  "source": {
    "blob": "a866e79d6e525d1d7bdbfbfeb2574af4639840e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 298,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e293fdf05669cc5bce8c8a390d400e0f094e29031f85ec08f91dfe88f62a07f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:970b6b12-adf8-2d9a-8933-fb1d498e6b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_lintegral_congr_fun {f g : α → ℝ≥0∞} {s : Set α} (hs : MeasurableSet s)
    (hfg : ∀ᵐ x ∂μ, x ∈ s → f x = g x) : ∫⁻ x in s, f x ∂μ = ∫⁻ x in s, g x ∂μ := by
  rw [lintegral_congr_ae]
  rw [EventuallyEq]
  rwa [ae_restrict_iff' hs]
#align measure_theory.set_lintegral_congr_fun MeasureTheory.set_lintegral_congr_fun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lebesgue/Variantdf45c106135015b48657a4800a548d4c2af2ee9b2257ba0c5920968a65fd094b.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a866e79d6e525d1d7bdbfbfeb2574af4639840e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
