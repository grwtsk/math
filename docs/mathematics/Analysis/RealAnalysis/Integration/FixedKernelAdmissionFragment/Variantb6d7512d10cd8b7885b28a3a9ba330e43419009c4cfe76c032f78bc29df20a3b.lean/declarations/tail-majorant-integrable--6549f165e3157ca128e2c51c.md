# tail_majorant_integrable

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
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fc971c8b-574e-e3a9-d5a1-c91bbfe5d245",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3facb10f-e163-4ae8-80f9-a8d5b46bd7aa",
  "kind": "theorem",
  "lexical_name": "tail_majorant_integrable",
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
  "slug": "tail-majorant-integrable--6549f165e3157ca128e2c51c",
  "source": {
    "blob": "10c9ad6f033883228d5896b035d463e97c72c217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6549f165e3157ca128e2c51ca1966e05f44672e80bbe18ebcda29e06f5c06d3b",
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

Occurrence: `result:3facb10f-e163-4ae8-80f9-a8d5b46bd7aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tail_majorant_integrable :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Set.Ioi 2) := by
  have hi := (exp_neg_integrableOn_Ioi 2 (b := 1 / 2) (by norm_num)).const_mul
    (Real.exp (1 / 2) * derivativeBudget)
  change Integrable (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget)
    (volume.restrict (Set.Ioi 2))
  convert hi using 1
  funext t
  rw [show (1 - t) / 2 = (1 / 2 : ℝ) + -(1 / 2) * t by ring, Real.exp_add]
  ring

/-- The measurable tail of the fixed source kernel is absolutely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10c9ad6f033883228d5896b035d463e97c72c217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
