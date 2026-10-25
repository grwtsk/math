# toSet_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86d2c513f864512427cfc38c95775227ec8b52c396a1cf3bfddfba1398ff6188",
  "kind": "def",
  "lexical_name": "toSet_equiv",
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
  "slug": "toset-equiv--631f30af40b355af6b5fbccc",
  "source": {
    "blob": "8a88b790afd4c38ebab32e8a5591f30d06a2f72b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant340fd572798495c98ba01d792dbfa3b508743889cbc57eec122c77a2ccdebf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:631f30af40b355af6b5fbcccd8e752981dbc827c98112297c7f797dd34449f4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant340fd572798495c98ba01d792dbfa3b508743889cbc57eec122c77a2ccdebf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86d2c513f864512427cfc38c95775227ec8b52c396a1cf3bfddfba1398ff6188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toSet_equiv : ZFSet.{u} ≃ {s : Set ZFSet.{u} // Small.{u, u+1} s} where
  toFun x := ⟨x.toSet, x.small_toSet⟩
  invFun := fun ⟨s, _⟩ ↦ mk <| PSet.mk (Shrink s) fun x ↦ ((equivShrink.{u, u+1} s).symm x).1.out
  left_inv := Function.rightInverse_of_injective_of_leftInverse (by intros x y; simp)
    fun s ↦ Subtype.coe_injective <| toSet_equiv_aux s.2
  right_inv s := Subtype.coe_injective <| toSet_equiv_aux s.2

/-- The **Burali-Forti paradox**: ordinals form a proper class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant340fd572798495c98ba01d792dbfa3b508743889cbc57eec122c77a2ccdebf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Class/Variant340fd572798495c98ba01d792dbfa3b508743889cbc57eec122c77a2ccdebf83.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a88b790afd4c38ebab32e8a5591f30d06a2f72b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
