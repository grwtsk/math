# sigma_image_fst_preimage_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9ca8c43-416d-9f7f-8e88-06e0b0128769",
  "kind": "theorem",
  "lexical_name": "sigma_image_fst_preimage_mk",
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
  "slug": "sigma-image-fst-preimage-mk--0e47909f9875d5d8d384eee9",
  "source": {
    "blob": "14554261bd32302154cac3c876eb5ed2e4897755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e47909f9875d5d8d384eee9934b0620d2e26c5ef3c9451f007c602db74ba798",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9ca8c43-416d-9f7f-8e88-06e0b0128769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigma_image_fst_preimage_mk {β : α → Type*} [DecidableEq α] (s : Finset (Σ a, β a)) :
    ((s.image Sigma.fst).sigma fun a => s.preimage (Sigma.mk a) sigma_mk_injective.injOn) =
      s :=
  s.sigma_preimage_mk_of_subset (Subset.refl _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variantf191d75a109ec82f06c84189490d3d37f4f1dcfb88ba8c5332ba6183b20f9c00.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14554261bd32302154cac3c876eb5ed2e4897755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
