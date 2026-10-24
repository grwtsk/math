# tendstoInMeasure_iff_tendsto_Lp_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cedd0d64-51aa-4515-9528-16a40314e80f",
  "kind": "theorem",
  "lexical_name": "tendstoInMeasure_iff_tendsto_Lp_finite",
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
  "slug": "tendstoinmeasure-iff-tendsto-lp-finite--97647b9200a3cba9a024c6a1",
  "source": {
    "blob": "7a9e30855e47355f31e5828b2c102ac411718319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 624,
    "line": 615,
    "path": "GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97647b9200a3cba9a024c6a165644f33cbdfca02e81a719d95999484a91baff3",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cedd0d64-51aa-4515-9528-16a40314e80f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 615–624.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoInMeasure_iff_tendsto_Lp_finite [IsFiniteMeasure μ] (hp : 1 ≤ p) (hp' : p ≠ ∞)
    (hf : ∀ n, MemLp (f n) p μ) (hg : MemLp g p μ) :
    TendstoInMeasure μ f atTop g ∧ UnifIntegrable f p μ ↔
      Tendsto (fun n => eLpNorm (f n - g) p μ) atTop (𝓝 0) :=
  ⟨fun h => tendsto_Lp_finite_of_tendstoInMeasure hp hp' (fun n => (hf n).1) hg h.2 h.1, fun h =>
    ⟨tendstoInMeasure_of_tendsto_eLpNorm (lt_of_lt_of_le zero_lt_one hp).ne.symm
        (fun n => (hf n).aestronglyMeasurable) hg.aestronglyMeasurable h,
      unifIntegrable_of_tendsto_Lp hp hp' hf hg h⟩⟩

/-- This lemma is superseded by `unifIntegrable_of` which do not require `C` to be positive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/UniformIntegrable/Variantf28458ca9cb3c798fc6fc7da8dee12662a3d895dce288961fc00fa3d3ad87fd8.lean#L615).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9e30855e47355f31e5828b2c102ac411718319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
