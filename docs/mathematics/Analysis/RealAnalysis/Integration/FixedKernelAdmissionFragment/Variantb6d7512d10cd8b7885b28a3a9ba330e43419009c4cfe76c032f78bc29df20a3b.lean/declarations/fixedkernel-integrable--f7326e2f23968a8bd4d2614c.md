# fixedKernel_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10c9ad6f033883228d5896b035d463e97c72c217",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff83c957-c76d-02bf-4915-b0efec789b60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91c8f1c4-196e-6ec1-04a8-79ded7dd775b",
  "kind": "theorem",
  "lexical_name": "fixedKernel_integrable",
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
  "slug": "fixedkernel-integrable--f7326e2f23968a8bd4d2614c",
  "source": {
    "blob": "10c9ad6f033883228d5896b035d463e97c72c217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7326e2f23968a8bd4d2614c4f90fcadc3e6c082b4285cd2adc550d34046ca4f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91c8f1c4-196e-6ec1-04a8-79ded7dd775b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_integrable : Integrable fixedKernel := by
  have hzero : IntegrableOn fixedKernel (Set.Iic 0) := by
    have hz : IntegrableOn (fun _ : ℝ => (0 : ℝ)) (Set.Iic 0) :=
      integrable_zero ℝ ℝ (volume.restrict (Set.Iic 0))
    exact hz.congr_fun (fun t ht => (fixedKernel_zero_of_nonpos t ht).symm) measurableSet_Iic
  have hi := hzero.union fixedKernel_integrableOn_Ioi
  simpa only [Set.Iic_union_Ioi, integrableOn_univ] using hi


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c9ad6f033883228d5896b035d463e97c72c217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
