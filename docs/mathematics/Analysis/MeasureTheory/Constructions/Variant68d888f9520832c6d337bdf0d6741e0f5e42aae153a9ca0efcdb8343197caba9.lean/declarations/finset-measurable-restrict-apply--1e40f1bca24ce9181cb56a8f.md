# Finset.measurable_restrict₂_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dc7e13c975ea4399781d9b1eb72c50572a31561",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 627,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2c17aa6-3f27-e3d5-cace-3250ee917881",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd679ddb-e92e-53aa-0908-1cf416fbedc3",
  "kind": "theorem",
  "lexical_name": "Finset.measurable_restrict₂_apply",
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
  "slug": "finset-measurable-restrict-apply--1e40f1bca24ce9181cb56a8f",
  "source": {
    "blob": "8dc7e13c975ea4399781d9b1eb72c50572a31561",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 631,
    "line": 627,
    "path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e40f1bca24ce9181cb56a8fec3d335bd3d9aab7b364252aa10e15ed604f7aed",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd679ddb-e92e-53aa-0908-1cf416fbedc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–631.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.measurable_restrict₂_apply {s t : Finset α} (hst : s ⊆ t)
    {f : t → γ} (hf : Measurable f) :
    Measurable (restrict₂ (π := fun _ ↦ γ) hst f) := hf.comp (measurable_inclusion hst)

variable (X) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc7e13c975ea4399781d9b1eb72c50572a31561` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
