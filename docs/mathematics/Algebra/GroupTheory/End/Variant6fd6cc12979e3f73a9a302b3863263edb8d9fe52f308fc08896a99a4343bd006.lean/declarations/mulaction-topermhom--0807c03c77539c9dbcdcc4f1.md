# MulAction.toPermHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a5012f63a63e6c9f768d7bf884c5f21d740a48470079ffb9f7469358fc2a3d2",
  "kind": "def",
  "lexical_name": "MulAction.toPermHom",
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
  "slug": "mulaction-topermhom--0807c03c77539c9dbcdcc4f1",
  "source": {
    "blob": "c481ae021e1fe86c8625c022685092912e8d8493",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 188,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0807c03c77539c9dbcdcc4f16147ce5457ed8796170479992c95913a8bcc4ad7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a5012f63a63e6c9f768d7bf884c5f21d740a48470079ffb9f7469358fc2a3d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulAction.toPermHom : G →* Equiv.Perm α where
  toFun := MulAction.toPerm
  map_one' := Equiv.ext <| one_smul G
  map_mul' u₁ u₂ := Equiv.ext <| mul_smul (u₁ : G) u₂

end Group

section AddGroup
variable (G α) [AddGroup G] [AddAction G α]

/-- Given an action of an additive group `G` on a set `α`, each `g : G` defines a permutation of
`α`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variant6fd6cc12979e3f73a9a302b3863263edb8d9fe52f308fc08896a99a4343bd006.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c481ae021e1fe86c8625c022685092912e8d8493` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
