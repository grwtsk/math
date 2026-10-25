# subtypeSubtypeEquivSubtypeExists

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:354ce298996ae24bf3d04f5f0f102cb75b32bc0da47c46d9134805c8928953b0",
  "kind": "def",
  "lexical_name": "subtypeSubtypeEquivSubtypeExists",
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
  "slug": "subtypesubtypeequivsubtypeexists--d5274f298f73c6f3013f31d6",
  "source": {
    "blob": "97db835daa208cefb910427a30bdba6cf585a9dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1215,
    "line": 1203,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant689afba78f354f7beb3deb3601ae8c33f1f750652c906e1686d584330a726ce8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5274f298f73c6f3013f31d625dfad4e0fe306644c96d1c0dbed5bd2053aa959",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant689afba78f354f7beb3deb3601ae8c33f1f750652c906e1686d584330a726ce8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:354ce298996ae24bf3d04f5f0f102cb75b32bc0da47c46d9134805c8928953b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1203–1215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeSubtypeEquivSubtypeExists (p : α → Prop) (q : Subtype p → Prop) :
    Subtype q ≃ { a : α // ∃ h : p a, q ⟨a, h⟩ } :=
  ⟨fun a =>
    ⟨a.1, a.1.2, by
      rcases a with ⟨⟨a, hap⟩, haq⟩
      exact haq⟩,
    fun a => ⟨⟨a, a.2.fst⟩, a.2.snd⟩, fun ⟨⟨a, ha⟩, h⟩ => rfl, fun ⟨a, h₁, h₂⟩ => rfl⟩
#align equiv.subtype_subtype_equiv_subtype_exists Equiv.subtypeSubtypeEquivSubtypeExists
#align equiv.subtype_subtype_equiv_subtype_exists_symm_apply_coe_coe Equiv.subtypeSubtypeEquivSubtypeExists_symm_apply_coe_coe
#align equiv.subtype_subtype_equiv_subtype_exists_apply_coe Equiv.subtypeSubtypeEquivSubtypeExists_apply_coe

/-- A subtype of a subtype is equivalent to the subtype of elements satisfying both predicates. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant689afba78f354f7beb3deb3601ae8c33f1f750652c906e1686d584330a726ce8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant689afba78f354f7beb3deb3601ae8c33f1f750652c906e1686d584330a726ce8.lean#L1203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97db835daa208cefb910427a30bdba6cf585a9dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
