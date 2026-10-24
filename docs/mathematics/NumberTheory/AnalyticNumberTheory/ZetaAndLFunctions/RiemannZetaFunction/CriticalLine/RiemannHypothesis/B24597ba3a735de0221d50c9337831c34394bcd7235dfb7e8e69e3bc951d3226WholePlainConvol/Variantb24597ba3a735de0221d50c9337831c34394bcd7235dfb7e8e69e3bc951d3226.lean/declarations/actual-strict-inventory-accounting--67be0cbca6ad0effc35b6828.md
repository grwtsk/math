# actual_strict_inventory_accounting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a0952559a15f69a6c33f3dee7a159c3c6ea263c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0a5ba73-ed6f-9a2e-6d1c-b01f5b9aeb9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c43e115d-dde5-85ca-f9cf-16dfc4784809",
  "kind": "theorem",
  "lexical_name": "actual_strict_inventory_accounting",
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
  "slug": "actual-strict-inventory-accounting--67be0cbca6ad0effc35b6828",
  "source": {
    "blob": "5a0952559a15f69a6c33f3dee7a159c3c6ea263c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67be0cbca6ad0effc35b68280b5467b9b7a820b69675c30833b750c75b64c638",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c43e115d-dde5-85ca-f9cf-16dfc4784809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_strict_inventory_accounting (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A 1 (sourceKernelCutoff A) + mertensResidual A - cutoffOneDiagonal A =
      sourceMobiusKernel A 1 := by
  rw [plainOff_one_eq_logRow_sub_residual_add_diagonal A hA]
  ring

/-- On a supported synthetic weight, omitting the unit column changes the finite interaction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226WholePlainConvol/Variantb24597ba3a735de0221d50c9337831c34394bcd7235dfb7e8e69e3bc951d3226.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a0952559a15f69a6c33f3dee7a159c3c6ea263c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
