# coeEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39a7e5ac98fa14ec1ef23eb49c1be41a12f24e363d72faa94b90e5a80ad4acf0",
  "kind": "def",
  "lexical_name": "coeEquiv",
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
  "slug": "coeequiv--da0d51222557388acaeab64d",
  "source": {
    "blob": "90bfc33c92ab0321dfcb6b8f631d4c5fae9d7e79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 363,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da0d51222557388acaeab64db04678322571e279e35d4e0ed9eab892b3a127ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39a7e5ac98fa14ec1ef23eb49c1be41a12f24e363d72faa94b90e5a80ad4acf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coeEquiv : ZFSet.{u} ≃ {s : Set ZFSet.{u} // Small.{u, u+1} s} where
  toFun x := ⟨x, x.small_coe⟩
  invFun := fun ⟨s, _⟩ ↦ mk <| PSet.mk (Shrink s) fun x ↦ ((equivShrink.{u, u + 1} s).symm x).1.out
  left_inv := private Function.rightInverse_of_injective_of_leftInverse (by intro _ _; simp)
    fun s ↦ Subtype.coe_injective <| coe_equiv_aux s.2
  right_inv s := private Subtype.coe_injective <| coe_equiv_aux s.2

/-- The **Burali-Forti paradox**: ordinals form a proper class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant3249e255a2fa53515ee0f7f63569db33a7cc3ef236a8e38557040fe115f0336c.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90bfc33c92ab0321dfcb6b8f631d4c5fae9d7e79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
