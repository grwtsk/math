# Subgraph.coeCopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cb6efc8db15174145862e35e2873b8a9a7c243b7a33efd031d1fd462e98f78b",
  "kind": "def",
  "lexical_name": "Subgraph.coeCopy",
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
  "slug": "subgraph-coecopy--462032205e2c64b0572a5ead",
  "source": {
    "blob": "9ca0e48dce318e670326b6dcb49a58451fa78411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 212,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:462032205e2c64b0572a5ead9d961b8e9fc5ed92c0be5816ec18e355bce749f4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cb6efc8db15174145862e35e2873b8a9a7c243b7a33efd031d1fd462e98f78b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subgraph.coeCopy (G' : G.Subgraph) : Copy G'.coe G := G'.hom.toCopy hom_injective

end Copy

/-!
#### Induced copies

An induced copy of a graph `G` inside a graph `H` is an embedding from the vertices of
`G` into the vertices of `H` which preserves the adjacency relation.

This is already captured by the notion of graph embeddings, defined as `G ↪g H`.

### Containment

#### Not necessarily induced containment

A graph `H` *contains* a graph `G` if there is some copy `f : Copy G H` of `G` inside `H`. This
amounts to `H` having a subgraph isomorphic to `G`.

We denote "`G` is contained in `H`" by `G ⊑ H` (`\squb`).
-/

section IsContained

/-- The relation `IsContained H G`, `H ⊑ G` says that `G` contains a copy of `H`.

This is equivalent to the existence of an isomorphism from `H` to a subgraph of `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant4563363534e5159a9fb3f5e7b181697aecef5f2c7d394e2c19a229c65788c2fe.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca0e48dce318e670326b6dcb49a58451fa78411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
