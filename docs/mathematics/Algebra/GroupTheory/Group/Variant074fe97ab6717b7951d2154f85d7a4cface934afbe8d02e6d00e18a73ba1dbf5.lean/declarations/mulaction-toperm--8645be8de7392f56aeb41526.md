# MulAction.toPerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7f86126ce0ec5cad63359950a3bbf7131ea9da1aeb001a62b1a4273b48175be",
  "kind": "def",
  "lexical_name": "MulAction.toPerm",
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
  "slug": "mulaction-toperm--8645be8de7392f56aeb41526",
  "source": {
    "blob": "33528194679fa6b43084b07def63e50147bca10b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 48,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8645be8de7392f56aeb41526f8fc21b42a7102410905da6a38b14979bafb943b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7f86126ce0ec5cad63359950a3bbf7131ea9da1aeb001a62b1a4273b48175be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulAction.toPerm (a : α) : Equiv.Perm β :=
  ⟨fun x => a • x, fun x => a⁻¹ • x, inv_smul_smul a, smul_inv_smul a⟩
#align mul_action.to_perm MulAction.toPerm
#align add_action.to_perm AddAction.toPerm
#align add_action.to_perm_apply AddAction.toPerm_apply
#align mul_action.to_perm_apply MulAction.toPerm_apply
#align add_action.to_perm_symm_apply AddAction.toPerm_symm_apply
#align mul_action.to_perm_symm_apply MulAction.toPerm_symm_apply

/-- Given an action of an additive group `α` on `β`, each `g : α` defines a permutation of `β`. -/
add_decl_doc AddAction.toPerm

/-- `MulAction.toPerm` is injective on faithful actions. -/
@[to_additive "`AddAction.toPerm` is injective on faithful actions."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33528194679fa6b43084b07def63e50147bca10b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
