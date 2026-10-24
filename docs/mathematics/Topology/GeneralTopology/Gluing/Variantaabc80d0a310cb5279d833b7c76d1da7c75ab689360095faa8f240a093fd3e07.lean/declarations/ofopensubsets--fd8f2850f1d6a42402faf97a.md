# ofOpenSubsets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a6f2830e0a5139af7f1b59c7756023cd7e2a5491b2374f3186c6a2652f0c095",
  "kind": "def",
  "lexical_name": "ofOpenSubsets",
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
  "slug": "ofopensubsets--fd8f2850f1d6a42402faf97a",
  "source": {
    "blob": "7d742846b153613845bea1363bff216a2232062f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 369,
    "path": "GRWTSK/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd8f2850f1d6a42402faf97ad0bdd1c4047fdd7f3ab17041931d800be375c18f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a6f2830e0a5139af7f1b59c7756023cd7e2a5491b2374f3186c6a2652f0c095`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofOpenSubsets : TopCat.GlueData.{u} :=
  mk'.{u}
    { J
      U := fun i => (Opens.toTopCat <| TopCat.of α).obj (U i)
      V := fun _ j => (Opens.map <| Opens.inclusion' _).obj (U j)
      t := fun i j => ofHom ⟨fun x => ⟨⟨x.1.1, x.2⟩, x.1.2⟩, by fun_prop⟩
      V_id := fun i => by ext; simp
      t_id := fun i => by ext; rfl
      t_inter := fun _ _ _ _ hx => hx
      cocycle := fun _ _ _ _ _ => rfl }

/-- The canonical map from the glue of a family of open subsets `α` into `α`.
This map is an open embedding (`fromOpenSubsetsGlue_isOpenEmbedding`),
and its range is `⋃ i, (U i : Set α)` (`range_fromOpenSubsetsGlue`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Gluing/Variantaabc80d0a310cb5279d833b7c76d1da7c75ab689360095faa8f240a093fd3e07.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d742846b153613845bea1363bff216a2232062f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
