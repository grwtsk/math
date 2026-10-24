# erdosTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:27982e9dcea2ea27f08cda2110b172e003c62c10f5f78893e59b6f6dff63eea9",
  "kind": "def",
  "lexical_name": "erdosTargets",
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
  "slug": "erdostargets--baa077e1d0cb8fff64b3a350",
  "source": {
    "blob": "ab8645f014820ae2c7ae62703a80a46a4626c7fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 267,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baa077e1d0cb8fff64b3a35085ae44c2ab88fcc0acf4825c004f4d5a3f65e053",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:27982e9dcea2ea27f08cda2110b172e003c62c10f5f78893e59b6f6dff63eea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def erdosTargets : List OpenTargetRecord := [
  mk "erdos.hajnal" .erdos "Erdos-Hajnal conjecture" .openStatus
    ["forbidden induced subgraph", "hereditary graph class"]
    ["large clique or independent set lower bound"]
    ["fixed forbidden graph", "finite graph family"]
    ["polynomial-size homogeneous set"]
    []
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.distinct_distances" .erdos "Erdos distinct distances" .partialStatus
    ["finite point set", "Euclidean distance set"]
    ["sharp asymptotic lower bound"]
    ["planar point configuration"]
    ["distance-set growth"]
    ["major partial progress and solved-order variants"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.unit_distances" .erdos "Erdos unit distances" .openStatus
    ["finite planar point set", "unit-distance graph"]
    ["sharp extremal growth rate"]
    ["point configuration", "unit-distance predicate"]
    ["unit edge count bound"]
    ["recent AI-assisted updates are metadata only"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini, sourceErdosUnitDistanceNews],
  mk "erdos.szekeres_happy_ending" .erdos "Erdos-Szekeres happy ending problem" .partialStatus
    ["general-position point sets", "convex polygons"]
    ["convex polygon forcing number"]
    ["number of points", "polygon size"]
    ["least forcing threshold"]
    []
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.straus" .erdos "Erdos-Straus conjecture" .openStatus
    ["positive integers", "Egyptian fractions"]
    ["4/n = 1/x + 1/y + 1/z"]
    ["n greater than one"]
    ["existence of x y z"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.moser" .erdos "Erdos-Moser equation" .openStatus
    ["exponential Diophantine equation"]
    ["classification of solutions"]
    ["integer solution predicates"]
    ["nonexistence or complete solution set"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.turan_additive_bases" .erdos "Erdos-Turan additive bases" .openStatus
    ["additive basis", "representation function"]
    ["representation growth residue"]
    ["basis order", "counting function"]
    ["growth lower/upper behavior"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.faber_lovasz" .erdos "Erdos-Faber-Lovasz conjecture" .solvedReference
    ["linear hypergraph", "edge coloring"]
    ["chromatic index bound"]
    ["finite linear hypergraph"]
    ["edge-coloring conclusion"]
    ["solved reference target; not imported here"]
    ["solved reference is not active Lean proof"]
    .solvedReferenceOnly clearsByOpen [sourceErdosGemini],
  mk "erdos.matching" .erdos "Erdos matching conjecture" .partialStatus
    ["extremal set family", "matching number"]
    ["maximum size of family with bounded matching number"]
    ["uniform family", "matching constraint"]
    ["extremal bound"]
    []
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [sourceErdosGemini],
  mk "erdos.ginzburg_ziv_variants" .erdos "Erdos-Ginzburg-Ziv variants" .partialStatus
    ["finite abelian group", "zero-sum subsequence"]
    ["zero-sum length and variant thresholds"]
    ["sequence over group"]
    ["zero-sum subsequence conclusion"]
    ["base theorem solved; variants remain target-specific"]
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini]
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8645f014820ae2c7ae62703a80a46a4626c7fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
