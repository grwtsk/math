# MulOneClass.isUnital

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4cb8d85e-1741-0ee3-3620-790347c53d7b",
  "kind": "theorem",
  "lexical_name": "MulOneClass.isUnital",
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
  "slug": "muloneclass-isunital--83dbd24fa14e816684690be4",
  "source": {
    "blob": "1c3749775b0197f63a47ae74584e11f1f4764680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 49,
    "path": "GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83dbd24fa14e816684690be47623cd2963b86ade5d0b3b5d4524322def97613f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cb8d85e-1741-0ee3-3620-790347c53d7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MulOneClass.isUnital [_G : MulOneClass X] : IsUnital (· * ·) (1 : X) :=
  IsUnital.mk ⟨MulOneClass.one_mul⟩ ⟨MulOneClass.mul_one⟩
#align eckmann_hilton.mul_one_class.is_unital EckmannHilton.MulOneClass.isUnital
#align eckmann_hilton.add_zero_class.is_unital EckmannHilton.AddZeroClass.IsUnital

variable {m₁ m₂ : X → X → X} {e₁ e₂ : X}

variable (h₁ : IsUnital m₁ e₁) (h₂ : IsUnital m₂ e₂)

variable (distrib : ∀ a b c d, ((a <m₂> b) <m₁> c <m₂> d) = (a <m₁> c) <m₂> b <m₁> d)

/-- If a type carries two unital binary operations that distribute over each other,
then they have the same unit elements.

In fact, the two operations are the same, and give a commutative monoid structure,
see `eckmann_hilton.CommMonoid`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EckmannHilton/Variant1a32e3f754d73ed036ae9704b773375fe5debfd0d5efa5119b60b4300aa8d55d.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3749775b0197f63a47ae74584e11f1f4764680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
