# AddEquiv.toMultiplicative''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c841c9080ba82a1923ade72fa543a2b80cc1ef5db2f83d9812928c5c1edddc4c",
  "kind": "def",
  "lexical_name": "AddEquiv.toMultiplicative''",
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
  "slug": "addequiv-tomultiplicative--be4c38d634d007d091a4d0b5",
  "source": {
    "blob": "98ea4545fe13550b97ae1c0fd6370c1c1e28d5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant8ea5427f510ac6607969e32b913555c6d10eafb6bc35be878b203ab211e0f210.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be4c38d634d007d091a4d0b5ac61b276cabc50c86a594788db9a33bd694934ff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Variant8ea5427f510ac6607969e32b913555c6d10eafb6bc35be878b203ab211e0f210.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c841c9080ba82a1923ade72fa543a2b80cc1ef5db2f83d9812928c5c1edddc4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def AddEquiv.toMultiplicative'' [AddZeroClass G] [MulOneClass H] :
    G ≃+ Additive H ≃ (Multiplicative G ≃* H) where
  toFun f :=
  { toFun := AddMonoidHom.toMultiplicative'' f.toAddMonoidHom
    invFun := AddMonoidHom.toMultiplicative' f.symm.toAddMonoidHom
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_mul' := map_add f }
  invFun f :=
  { toFun := AddMonoidHom.toMultiplicative''.symm f.toMonoidHom
    invFun := AddMonoidHom.toMultiplicative'.symm f.symm.toMonoidHom
    left_inv := f.left_inv
    right_inv := f.right_inv
    map_add' := map_mul f }
  left_inv x := by ext; rfl
  right_inv x := by ext; rfl

/-- Reinterpret `Multiplicative G ≃* H` as `G ≃+ Additive H` as. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Variant8ea5427f510ac6607969e32b913555c6d10eafb6bc35be878b203ab211e0f210.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Variant8ea5427f510ac6607969e32b913555c6d10eafb6bc35be878b203ab211e0f210.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98ea4545fe13550b97ae1c0fd6370c1c1e28d5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
