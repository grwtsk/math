# MulHom.coeFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:be7f4d857dcea78bd0533f9e67bec733ad06843b431b111c793cd05b12660fcc",
  "kind": "def",
  "lexical_name": "MulHom.coeFn",
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
  "slug": "mulhom-coefn--4edb460e97f1d98ad0263de5",
  "source": {
    "blob": "fa7fc11558c16fab01401f72262fcca3d7ed52d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 333,
    "path": "GRWTSK/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4edb460e97f1d98ad0263de5b672d041a283f986a353ed27ea4c159e211e2ac1",
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

Occurrence: `declaration:be7f4d857dcea78bd0533f9e67bec733ad06843b431b111c793cd05b12660fcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulHom.coeFn (α β : Type*) [Mul α] [CommSemigroup β] :
    (α →ₙ* β) →ₙ* α → β where
  toFun g := g
  map_mul' _ _ := rfl
#align mul_hom.coe_fn MulHom.coeFn
#align add_hom.coe_fn AddHom.coeFn
#align mul_hom.coe_fn_apply MulHom.coeFn_apply
#align add_hom.coe_fn_apply AddHom.coeFn_apply

/-- Semigroup homomorphism between the function spaces `I → α` and `I → β`, induced by a semigroup
homomorphism `f` between `α` and `β`. -/
@[to_additive (attr := simps) "Additive semigroup homomorphism between the function spaces `I → α`
and `I → β`, induced by an additive semigroup homomorphism `f` between `α` and `β`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7fc11558c16fab01401f72262fcca3d7ed52d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
