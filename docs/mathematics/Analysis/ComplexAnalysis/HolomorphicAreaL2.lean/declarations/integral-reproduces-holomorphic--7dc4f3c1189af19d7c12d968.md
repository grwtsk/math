# integral_reproduces_holomorphic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dabb712f-af74-83b5-edd7-f9d7f67385ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca652e3d-6aa7-ab3a-ae61-0dfba41fa108",
  "kind": "theorem",
  "lexical_name": "integral_reproduces_holomorphic",
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
  "slug": "integral-reproduces-holomorphic--7dc4f3c1189af19d7c12d968",
  "source": {
    "blob": "5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 258,
    "path": "GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dc4f3c1189af19d7c12d968f26750dd4cd02f4dba549d362104d8aac3b933be",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicAreaL2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca652e3d-6aa7-ab3a-ae61-0dfba41fa108`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_reproduces_holomorphic (hOpen : D.IsOpenCover) (f : HolomorphicSection D.X)
    (hf : scalarEnergy hOpen f < ∞) (x : D.X.carrier) :
    Integrable (fun z => kernel hOpen x z * (f : Section D.X) z) (areaMeasure D.X) ∧
      (∫ z, kernel hOpen x z * (f : Section D.X) z ∂areaMeasure D.X) = (f : Section D.X) x := by
  let v := toCompletion (MetricWeights.identity D) (areaMeasure D.X) hOpen
    (classOf (MetricWeights.identity D) (areaMeasure D.X) hOpen
      (⟨scalarSection D hOpen f, hf⟩ :
        FiniteEnergySection (MetricWeights.identity D) (areaMeasure D.X) hOpen))
  have hv : completedRealization hOpen v = f := completedRealization_scalar_class hOpen f hf
  simpa only [realizedValue, hv] using
    And.intro (kernel_integrable hOpen x v) (integral_reproduces hOpen x v)

namespace Fixtures

open GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures (disk diskCover_isOpen center)
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures
  (spike spike_center spike_ae_zero)

/-- The nonholomorphic point spike is L2 because its a.e. class is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaL2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicAreaL2.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d4d0ddbee8a30501e4fba95c5cf785bcf8b4338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
