# conductorThreeThetaStep_eq_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "06c2c86f18669fff5cf5a1fec49c00a38c200959",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2fbcff5e-68bd-d84a-44c3-d61d5f281d56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82404277-0515-040c-2d7b-c2b226359ece",
  "kind": "theorem",
  "lexical_name": "conductorThreeThetaStep_eq_abel",
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
  "slug": "conductorthreethetastep-eq-abel--14c8a7fa7582d95ad4029303",
  "source": {
    "blob": "06c2c86f18669fff5cf5a1fec49c00a38c200959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 194,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14c8a7fa7582d95ad402930391e658554ae7c827e78a3f457f8253ebb1a4b4a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82404277-0515-040c-2d7b-c2b226359ece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem conductorThreeThetaStep_eq_abel (x : ℝ) :
    conductorThreeThetaStep x =
      primeCharacterStep x * Real.log ⌊max x 0⌋₊ -
        ∑ n ∈ Finset.range ⌊max x 0⌋₊,
          primeCharacterPartialSum n *
            (Real.log (n + 1) - Real.log n) := by
  simpa [primeCharacterStep, conductorThreeThetaStep] using
    conductorThreeTheta_eq_abel ⌊max x 0⌋₊

/-- Inverse Abel summation transported to the real step extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c2c86f18669fff5cf5a1fec49c00a38c200959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
