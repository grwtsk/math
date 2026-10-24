# mapToSubgraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de5c6b0be32ed2c91d5aef8b8df3941c2b3453faca5af066098dc5f919cb3230",
  "kind": "def",
  "lexical_name": "mapToSubgraph",
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
  "slug": "maptosubgraph--38554711e43a54ed425c08c7",
  "source": {
    "blob": "2df490050c69136b472eb58a5b51c08ea03e0a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 314,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38554711e43a54ed425c08c782566eb873c4ccb8d38e8f4321f3b8817681d107",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de5c6b0be32ed2c91d5aef8b8df3941c2b3453faca5af066098dc5f919cb3230`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapToSubgraph {u v : V} : ∀ w : G.Walk u v, w.toSubgraph.coe.Walk
    ⟨_, w.start_mem_verts_toSubgraph⟩ ⟨_, w.end_mem_verts_toSubgraph⟩
  | nil => nil
  | cons .. =>
    let h : cons .. |>.toSubgraph.Adj .. := (le_sup_left : _ ≤ Walk.toSubgraph _).right rfl
    let h : cons .. |>.toSubgraph.coe.Adj ⟨_, h.fst_mem⟩ ⟨_, h.snd_mem⟩ := h
    cons h <| mapToSubgraph _ |>.map <| Subgraph.inclusion le_sup_right

set_option backward.isDefEq.respectTransparency false in
/-- Mapping a walk to its own subgraph and then to the original graph produces the same walk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2df490050c69136b472eb58a5b51c08ea03e0a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
