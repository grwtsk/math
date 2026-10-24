# primeCharacterStep_eq_inverseAbel

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
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a8de73ae-73fb-d325-676c-00cf74dfbf12",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f19b54d1-b181-7fa6-e4aa-f996073d10b1",
  "kind": "theorem",
  "lexical_name": "primeCharacterStep_eq_inverseAbel",
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
  "slug": "primecharacterstep-eq-inverseabel--29c689f21825fd457a9d4ff2",
  "source": {
    "blob": "06c2c86f18669fff5cf5a1fec49c00a38c200959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 204,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29c689f21825fd457a9d4ff21cecefce70625bdc56914d87dedddae72bf73189",
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

Occurrence: `result:f19b54d1-b181-7fa6-e4aa-f996073d10b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCharacterStep_eq_inverseAbel
    {x : ℝ} (hx : 2 ≤ x) :
    primeCharacterStep x =
      conductorThreeThetaStep x * reciprocalLog ⌊max x 0⌋₊ +
        ∑ n ∈ Finset.Ico 2 ⌊max x 0⌋₊,
          conductorThreeTheta n *
            (reciprocalLog n - reciprocalLog (n + 1)) := by
  have hfloor : 2 ≤ ⌊max x 0⌋₊ := by
    apply Nat.le_floor
    exact hx.trans (le_max_left x 0)
  simpa [primeCharacterStep, conductorThreeThetaStep] using
    primeCharacterPartialSum_eq_inverseAbel hfloor

end

end Surface.Core.ConductorThreePartialSummation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConductorThreePartialSummation/Varianteb872ff858a9324bb95ed3549a4097d2611f3d07b0a16ef5a2f297735773ece5.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06c2c86f18669fff5cf5a1fec49c00a38c200959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
