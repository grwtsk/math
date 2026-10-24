# pdf_of_not_aemeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fddec64706ca08a2c05dfa36f013c8245225dca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:32595a89-3796-dee6-3d3f-7458c7b5deab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:602870f8-e7a3-a123-0928-3eb3bd13204e",
  "kind": "theorem",
  "lexical_name": "pdf_of_not_aemeasurable",
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
  "slug": "pdf-of-not-aemeasurable--6c9eeba2839c7986fb33ea37",
  "source": {
    "blob": "2fddec64706ca08a2c05dfa36f013c8245225dca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 129,
    "path": "GRWTSK/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c9eeba2839c7986fb33ea3735545364fce4cefddb75edbea5d2c15e282b8a2d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:602870f8-e7a3-a123-0928-3eb3bd13204e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pdf_of_not_aemeasurable {_ : MeasurableSpace Ω} {ℙ : Measure Ω} {μ : Measure E}
    {X : Ω → E} (hX : ¬AEMeasurable X ℙ) : pdf X ℙ μ =ᵐ[μ] 0 := by
  rw [pdf_def, map_of_not_aemeasurable hX]
  exact rnDeriv_zero μ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Density/Variant2fbfff699ad3ce8fc8d165f7c2a85a92ed3015ab770292f69894599246a8363d.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fddec64706ca08a2c05dfa36f013c8245225dca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
