# mkAddGroupHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e0a77ded1d8eec1a2b8cc2d086adde493b49760c0eb84b9ef7963f2c764e22f",
  "kind": "def",
  "lexical_name": "mkAddGroupHom",
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
  "slug": "mkaddgrouphom--8a3adf2562da697def97f75c",
  "source": {
    "blob": "cae9df5f62d104da0013ad733aa5c4bcdbbf2c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1068,
    "line": 1057,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a3adf2562da697def97f75c1afad3abfe13b1371517c69e0f1033ee19584a3f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e0a77ded1d8eec1a2b8cc2d086adde493b49760c0eb84b9ef7963f2c764e22f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1057–1068.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAddGroupHom [∀ i, AddGroup (β i)] (s : Finset ι) : (∀ i : (s : Set ι), β ↑i) →+ Π₀ i : ι, β i
    where
  toFun := mk s
  map_zero' := mk_zero
  map_add' _ _ := mk_add
#align dfinsupp.mk_add_group_hom DFinsupp.mkAddGroupHom

section

variable [Monoid γ] [∀ i, AddMonoid (β i)] [∀ i, DistribMulAction γ (β i)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8493b8de2b559265098940264cd2631ef6dfde9eb2f30686c2f80fa367c243d4.lean#L1057).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cae9df5f62d104da0013ad733aa5c4bcdbbf2c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
