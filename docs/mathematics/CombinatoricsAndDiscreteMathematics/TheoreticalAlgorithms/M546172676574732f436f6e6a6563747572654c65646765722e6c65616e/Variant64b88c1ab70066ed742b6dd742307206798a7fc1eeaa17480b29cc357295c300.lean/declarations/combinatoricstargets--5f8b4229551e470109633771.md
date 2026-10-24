# combinatoricsTargets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:93b3597757e96f49479c15baf89759f20e4d531589721b5c774611e35d2c7814",
  "kind": "def",
  "lexical_name": "combinatoricsTargets",
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
  "slug": "combinatoricstargets--5f8b4229551e470109633771",
  "source": {
    "blob": "ab8645f014820ae2c7ae62703a80a46a4626c7fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 768,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f8b4229551e470109633771ac91c3e943472de0f9c48828dcdf97f43dd311a8",
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

Occurrence: `declaration:93b3597757e96f49479c15baf89759f20e4d531589721b5c774611e35d2c7814`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 768–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combinatoricsTargets : List OpenTargetRecord := [
  mk "comb.hadwiger" .combinatorics "Hadwiger conjecture" .openStatus
    ["graph minors", "chromatic number"]
    ["chromatic number forces complete minor"]
    ["finite graph", "chromatic threshold"]
    ["complete minor existence"]
    ["known for small cases"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.erdos_hajnal" .combinatorics "Erdos-Hajnal" .openStatus
    ["hereditary graph classes", "homogeneous sets"]
    ["forbidden induced subgraph yields polynomial homogeneous set"]
    ["fixed graph H"]
    ["clique or independent set lower bound"]
    []
    standardForbiddenOverclaims
    .mutableStatusAtom clearsByOpen [sourceErdosGemini],
  mk "comb.caccetta_haggkvist" .combinatorics "Caccetta-Haggkvist conjecture" .openStatus
    ["directed graph", "minimum outdegree", "directed cycles"]
    ["short directed cycle forced by outdegree"]
    ["finite digraph and outdegree bound"]
    ["cycle length conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.union_closed" .combinatorics "Frankl union-closed sets conjecture" .openStatus
    ["finite union-closed family", "elements"]
    ["some element occurs in at least half the sets"]
    ["nonempty finite union-closed family"]
    ["frequent element conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.rota_basis" .combinatorics "Rota basis conjecture" .openStatus
    ["matroids", "bases"]
    ["arrange bases into transversal bases"]
    ["rank n matroid with n bases"]
    ["transversal basis arrangement"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.graceful_tree" .combinatorics "Graceful tree conjecture" .openStatus
    ["trees", "graph labeling"]
    ["every tree is graceful"]
    ["finite tree"]
    ["graceful labeling existence"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.ryser_brualdi_stein" .combinatorics "Ryser-Brualdi-Stein" .openStatus
    ["Latin squares", "transversals"]
    ["large transversal exists"]
    ["Latin square order hypotheses"]
    ["transversal size conclusion"]
    []
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.zarankiewicz_incidence" .combinatorics "Zarankiewicz and incidence variants" .openStatus
    ["bipartite graphs", "incidence structures"]
    ["forbidden-subgraph extremal bounds"]
    ["finite incidence or graph hypotheses"]
    ["edge/incidence bound"]
    ["many special bounds known"]
    standardForbiddenOverclaims
    .conjecturalAtom clearsByOpen [],
  mk "comb.cap_set_refinements" .combinatorics "Cap set refinements" .partialStatus
    ["finite vector spaces", "progression-free sets"]
    ["growth-rate refinements"]
    ["finite field and dimension hypotheses"]
    ["cardinality bound"]
    ["major cap-set theorem known"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen [],
  mk "comb.sunflower_refinements" .combinatorics "Sunflower refinements" .partialStatus
    ["set systems", "sunflowers"]
    ["sharp threshold and growth refinements"]
    ["uniform family hypotheses"]
    ["sunflower existence bound"]
    ["improved bounds known"]
    standardForbiddenOverclaims
    .partialProgressAtom clearsByOpen []
]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f436f6e6a6563747572654c65646765722e6c65616e/Variant64b88c1ab70066ed742b6dd742307206798a7fc1eeaa17480b29cc357295c300.lean#L768).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab8645f014820ae2c7ae62703a80a46a4626c7fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
