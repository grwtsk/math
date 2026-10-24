# sinOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:061f98459245c002707f44494c4f4cc0cca06e04ef3d017781b158dc59d2a1eb",
  "kind": "def",
  "lexical_name": "sinOrderIso",
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
  "slug": "sinorderiso--03f4722b5bb63b11b8d5831e",
  "source": {
    "blob": "5c84b8eebb2df23e71dc909f7a8610dbad8c32bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 875,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03f4722b5bb63b11b8d5831ea61cb50d3f0a6f758779236392bb8750639eef48",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:061f98459245c002707f44494c4f4cc0cca06e04ef3d017781b158dc59d2a1eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sinOrderIso : Icc (-(π / 2)) (π / 2) ≃o Icc (-1 : ℝ) 1 :=
  (strictMonoOn_sin.orderIso _ _).trans <| Set.orderIsoOfEq _ _ bijOn_sin.image_eq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb77ee099fbfd0e5bfd19c25e74f63882fc9362f72ef02b9c6efbe14ff4ab0e11.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c84b8eebb2df23e71dc909f7a8610dbad8c32bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
