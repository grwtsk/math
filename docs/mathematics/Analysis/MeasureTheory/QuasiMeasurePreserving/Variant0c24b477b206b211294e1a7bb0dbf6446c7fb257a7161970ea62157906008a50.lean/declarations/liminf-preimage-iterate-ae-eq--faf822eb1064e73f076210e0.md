# liminf_preimage_iterate_ae_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ee3bd1eb702173d2f8147a7368a765e5064616d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:adf06f45-b0e9-804e-736b-5cc23f856560",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17d55ec8-9216-3a05-9691-21cc8c4326fa",
  "kind": "theorem",
  "lexical_name": "liminf_preimage_iterate_ae_eq",
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
  "slug": "liminf-preimage-iterate-ae-eq--faf822eb1064e73f076210e0",
  "source": {
    "blob": "ee3bd1eb702173d2f8147a7368a765e5064616d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 170,
    "path": "GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faf822eb1064e73f076210e07d7282e93df9b4b7d98ff6b1c869a325d5f18199",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17d55ec8-9216-3a05-9691-21cc8c4326fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liminf_preimage_iterate_ae_eq {f : α → α} (hf : QuasiMeasurePreserving f μ μ)
    (hs : f ⁻¹' s =ᵐ[μ] s) : liminf (α := Set α) (fun n => (preimage f)^[n] s) atTop =ᵐ[μ] s :=
  liminf_ae_eq_of_forall_ae_eq (fun n => (preimage f)^[n] s) fun n ↦ by
    simpa only [Set.preimage_iterate_eq] using hf.preimage_iterate_ae_eq n hs

/-- For a quasi-measure-preserving self-map `f`, if a null measurable set `s` is a.e. invariant,
then it is a.e. equal to a measurable invariant set.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/QuasiMeasurePreserving/Variant0c24b477b206b211294e1a7bb0dbf6446c7fb257a7161970ea62157906008a50.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee3bd1eb702173d2f8147a7368a765e5064616d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
