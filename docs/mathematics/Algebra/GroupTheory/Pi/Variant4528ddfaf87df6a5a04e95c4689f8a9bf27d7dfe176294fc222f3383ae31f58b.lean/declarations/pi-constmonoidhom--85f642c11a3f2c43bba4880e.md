# Pi.constMonoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d9395afbbd1b1f4f2e82f6b10dc23f1ec75710b26484a127a0dfa63b56c9d60",
  "kind": "def",
  "lexical_name": "Pi.constMonoidHom",
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
  "slug": "pi-constmonoidhom--85f642c11a3f2c43bba4880e",
  "source": {
    "blob": "fa7fc11558c16fab01401f72262fcca3d7ed52d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 378,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85f642c11a3f2c43bba4880e2ff7a3b3343df6e806fff9a7591b276f20f50c0c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d9395afbbd1b1f4f2e82f6b10dc23f1ec75710b26484a127a0dfa63b56c9d60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Pi.constMonoidHom (α β : Type*) [MulOneClass β] : β →* α → β where
  toFun := Function.const α
  map_one' := rfl
  map_mul' _ _ := rfl
#align pi.const_monoid_hom Pi.constMonoidHom
#align pi.const_add_monoid_hom Pi.constAddMonoidHom
#align pi.const_monoid_hom_apply Pi.constMonoidHom_apply
#align pi.const_add_monoid_hom_apply Pi.constAddMonoidHom_apply

/-- Coercion of a `MonoidHom` into a function is itself a `MonoidHom`.

See also `MonoidHom.eval`. -/
@[to_additive (attr := simps) "Coercion of an `AddMonoidHom` into a function is itself
an `AddMonoidHom`.

See also `AddMonoidHom.eval`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7fc11558c16fab01401f72262fcca3d7ed52d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
