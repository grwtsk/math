# liftAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fe6dfc5420012586d30195386645d68d4d32479d28c0a5882ad2bb3f001a4eb",
  "kind": "def",
  "lexical_name": "liftAlgEquiv",
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
  "slug": "liftalgequiv--ef55d410214b4c6053d92b98",
  "source": {
    "blob": "3cf67648da33c3294bd7dc3f84a9e9e4faf7656d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 690,
    "path": "GRWTSK/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef55d410214b4c6053d92b98706edfd1ec9cda0337951e0be33f61824596afdc",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fe6dfc5420012586d30195386645d68d4d32479d28c0a5882ad2bb3f001a4eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftAlgEquiv {E : IntermediateField K L} (F : IntermediateField K E) : ↥F ≃ₐ[K] lift F where
  toFun x := ⟨x.1.1, (mem_lift x.1).mpr x.2⟩
  invFun x := ⟨⟨x.1, lift_le F x.2⟩, (mem_lift ⟨x.1, lift_le F x.2⟩).mp x.2⟩
  left_inv := congrFun rfl
  right_inv := congrFun rfl
  map_mul' _ _ := rfl
  map_add' _ _ := rfl
  commutes' _ := rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/Basic/Variant1ddd696fbd51d9f38d6941e2761652bfe7fb88dccf1addab7b55e3a984d60d98.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf67648da33c3294bd7dc3f84a9e9e4faf7656d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
