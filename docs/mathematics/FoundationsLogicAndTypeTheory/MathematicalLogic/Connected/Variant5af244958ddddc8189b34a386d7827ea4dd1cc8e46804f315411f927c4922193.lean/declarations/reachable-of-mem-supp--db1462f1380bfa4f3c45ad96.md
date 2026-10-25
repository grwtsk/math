# reachable_of_mem_supp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d800abc-26fb-0122-fc03-7cb9a5b2d6a5",
  "kind": "lemma",
  "lexical_name": "reachable_of_mem_supp",
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
  "slug": "reachable-of-mem-supp--db1462f1380bfa4f3c45ad96",
  "source": {
    "blob": "a5d8cc92b8b2acc14c73262422459bc4c022cba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 638,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db1462f1380bfa4f3c45ad9649711b7e4f9a1723e5dc6d61571da241d56b8226",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d800abc-26fb-0122-fc03-7cb9a5b2d6a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reachable_of_mem_supp {G : SimpleGraph V} (C : G.ConnectedComponent) {u v : V}
    (hu : u ∈ C.supp) (hv : v ∈ C.supp) : G.Reachable u v := by
  rw [mem_supp_iff] at hu hv
  exact ConnectedComponent.exact (hv ▸ hu)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Connected/Variant5af244958ddddc8189b34a386d7827ea4dd1cc8e46804f315411f927c4922193.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d8cc92b8b2acc14c73262422459bc4c022cba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
