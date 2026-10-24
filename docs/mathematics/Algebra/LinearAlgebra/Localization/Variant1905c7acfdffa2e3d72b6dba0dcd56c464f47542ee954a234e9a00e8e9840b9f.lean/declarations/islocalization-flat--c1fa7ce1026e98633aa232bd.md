# IsLocalization.flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a62a01a3892661223b1bda984d622c8fb2508a76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f41a8c8f-2d17-17b8-a77b-390315af896b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:45679ecc-810b-42ee-db1a-89e06527d977",
  "kind": "theorem",
  "lexical_name": "IsLocalization.flat",
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
  "slug": "islocalization-flat--c1fa7ce1026e98633aa232bd",
  "source": {
    "blob": "a62a01a3892661223b1bda984d622c8fb2508a76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 32,
    "path": "GRWTSK/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1fa7ce1026e98633aa232bdbcf5ba96313bf01efc0d3516d43800b077cf5335",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45679ecc-810b-42ee-db1a-89e06527d977`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.flat : Module.Flat R S := by
  refine Module.Flat.iff_lTensor_injectiveₛ.mpr fun P _ _ N ↦ ?_
  have h := ((range N.subtype).isLocalizedModule S p (TensorProduct.mk R S P 1)).isBaseChange _ S
  let e := (LinearEquiv.ofInjective _ Subtype.val_injective).lTensor S ≪≫ₗ h.equiv.restrictScalars R
  have : N.subtype.lTensor S = Submodule.subtype _ ∘ₗ e.toLinearMap := by
    ext; show _ = (h.equiv _).1; simp [h.equiv_tmul, TensorProduct.smul_tmul']
  simpa [this] using e.injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Localization/Variant1905c7acfdffa2e3d72b6dba0dcd56c464f47542ee954a234e9a00e8e9840b9f.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a62a01a3892661223b1bda984d622c8fb2508a76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
