# IsRatCondKernelCDF.iInf_rat_gt_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffda87e1c3370647a584a62c8bc589d235d0bfce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e1b0cb4b-e35e-92c4-15bc-07d9cd6c0019",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a4cba48f-3c44-fa2b-d5da-495ed3afc6f4",
  "kind": "lemma",
  "lexical_name": "IsRatCondKernelCDF.iInf_rat_gt_eq",
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
  "slug": "isratcondkernelcdf-iinf-rat-gt-eq--6fea94e76884ff13caa993d4",
  "source": {
    "blob": "ffda87e1c3370647a584a62c8bc589d235d0bfce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fea94e76884ff13caa993d40671c66020d31ec8d1d85b68b1fcc8da9061e2bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4cba48f-3c44-fa2b-d5da-495ed3afc6f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsRatCondKernelCDF.iInf_rat_gt_eq (hf : IsRatCondKernelCDF f κ ν) (a : α) :
    ∀ᵐ b ∂(ν a), ∀ q, ⨅ r : Ioi q, f (a, b) r = f (a, b) q := by
  filter_upwards [hf.isRatStieltjesPoint_ae a] with b hb using hb.iInf_rat_gt_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffda87e1c3370647a584a62c8bc589d235d0bfce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
