# subtypeUnivEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb9d20e50609e87fdcbcd2719475076088eaa9ef761bce5dc680d1e29ef31574",
  "kind": "def",
  "lexical_name": "subtypeUnivEquiv",
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
  "slug": "subtypeunivequiv--0f30bc2766ac2c5774e9c926",
  "source": {
    "blob": "428db1ca88d4c7bdc5d1037f7cdba0c363199d02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1235,
    "line": 1229,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f30bc2766ac2c5774e9c9269bb3f9a75f436273be83f72c6618b49c37b8d6c2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb9d20e50609e87fdcbcd2719475076088eaa9ef761bce5dc680d1e29ef31574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1229–1235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subtypeUnivEquiv {p : α → Prop} (h : ∀ x, p x) : Subtype p ≃ α :=
  ⟨fun x => x, fun x => ⟨x, h x⟩, fun _ => Subtype.eq rfl, fun _ => rfl⟩
#align equiv.subtype_univ_equiv Equiv.subtypeUnivEquiv
#align equiv.subtype_univ_equiv_apply Equiv.subtypeUnivEquiv_apply
#align equiv.subtype_univ_equiv_symm_apply Equiv.subtypeUnivEquiv_symm_apply

/-- A subtype of a sigma-type is a sigma-type over a subtype. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5cddeea4ce119fd9fdcb48c7d138705b4cab2132d54fe6845f2f1de13b648c79.lean#L1229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `428db1ca88d4c7bdc5d1037f7cdba0c363199d02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
