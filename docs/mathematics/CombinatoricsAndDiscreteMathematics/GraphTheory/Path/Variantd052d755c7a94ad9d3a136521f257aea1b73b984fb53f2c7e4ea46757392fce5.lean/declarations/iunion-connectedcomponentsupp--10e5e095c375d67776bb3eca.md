# iUnion_connectedComponentSupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e635069-cada-d3c2-4e1a-704798fa2f98",
  "kind": "lemma",
  "lexical_name": "iUnion_connectedComponentSupp",
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
  "slug": "iunion-connectedcomponentsupp--10e5e095c375d67776bb3eca",
  "source": {
    "blob": "550ea2a70d013bce47ef461a3e3ba0fc60361346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1339,
    "line": 1334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10e5e095c375d67776bb3eca6b29d229ea1ac1450fdad37900f82338ce4ab616",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e635069-cada-d3c2-4e1a-704798fa2f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1334–1339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iUnion_connectedComponentSupp (G : SimpleGraph V) :
    ⋃ c : G.ConnectedComponent, c.supp = Set.univ := by
  refine Set.eq_univ_of_forall fun v ↦ ⟨G.connectedComponentMk v, ?_⟩
  simp only [Set.mem_range, SetLike.mem_coe]
  exact ⟨by use G.connectedComponentMk v; exact rfl, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean#L1334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `550ea2a70d013bce47ef461a3e3ba0fc60361346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
