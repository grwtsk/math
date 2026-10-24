# conductorThreeBlockShellPrefixCorrelation_eq_sum_code

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25a75dcaabc8331fcab50dbaccbfd4c6c5eaf1ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7d12fb0-6d9e-2d07-4b35-87c5ebf148c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8425cf3-e121-6743-03c2-1275560b7a05",
  "kind": "theorem",
  "lexical_name": "conductorThreeBlockShellPrefixCorrelation_eq_sum_code",
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
  "slug": "conductorthreeblockshellprefixcorrelation-eq-sum-code--2b91a69c26a134056cbc4eb2",
  "source": {
    "blob": "25a75dcaabc8331fcab50dbaccbfd4c6c5eaf1ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 69,
    "path": "GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b91a69c26a134056cbc4eb26deabaa03d2a60ed846cef822b28b54aec8dd506",
  "verification": {
    "reference": "docs/verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8425cf3-e121-6743-03c2-1275560b7a05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeBlockShellPrefixCorrelation_eq_sum_code
    {N q x : ℕ}
    (B : TypeIIShellFactorBlock N q)
    (code : TypeIIShellPrefixCode N q x) :
    conductorThreeBlockShellPrefixCorrelation B x =
      ∑ D ∈ code.intervals,
        conductorThreeBlockIntervalCorrelation B D := by
  have hmatrix :
      typeIIShellPrefixMatrix B x =
        ∑ D ∈ code.intervals, typeIIShellIntervalMatrix B D := by
    exact shellPrefixMatrix_eq_sum_code code
      (fun m : B.Left ↦ m.1.1) (fun k : B.Right ↦ k.1.1)
  unfold conductorThreeBlockShellPrefixCorrelation
  rw [hmatrix]
  exact bilinearMatrixPairing_finset_sum
    (shellBlockLeftCoefficient B) code.intervals
    (typeIIShellIntervalMatrix B) (shellBlockRightCoefficient B)

/-! ## Finite Cauchy--Schwarz assembly -/

/-- The squared norm of a coded shell prefix is at most the code cardinality
times the full dyadic square mass of its factor block.

No Carleson hypothesis is used here. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ConductorThreeTypeIIMaximalAssembly/Variantfce823b4da3791a4381373ef2ae348c8c7a85c71b61df6cd14406e5d2352dc79.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25a75dcaabc8331fcab50dbaccbfd4c6c5eaf1ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
