# equivQuotientSubgroupOfOfEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5116b14948594f638a1f508d189f4078768ff98dad3012ebedcf78ba05b0dbb6",
  "kind": "def",
  "lexical_name": "equivQuotientSubgroupOfOfEq",
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
  "slug": "equivquotientsubgroupofofeq--a2185f8b56d43a5f5d25a97a",
  "source": {
    "blob": "9fe02bb339deaef7cab640f95fddd229f644bb8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 486,
    "path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2185f8b56d43a5f5d25a97a464a17843949caf5bdc2b79c38a22d17fbd7b92a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5116b14948594f638a1f508d189f4078768ff98dad3012ebedcf78ba05b0dbb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivQuotientSubgroupOfOfEq {A' A B' B : Subgroup G} [hAN : (A'.subgroupOf A).Normal]
    [hBN : (B'.subgroupOf B).Normal] (h' : A' = B') (h : A = B) :
    A ⧸ A'.subgroupOf A ≃* B ⧸ B'.subgroupOf B :=
  MonoidHom.toMulEquiv (quotientMapSubgroupOfOfLe h'.le h.le) (quotientMapSubgroupOfOfLe h'.ge h.ge)
    (by ext ⟨x, hx⟩; rfl)
    (by ext ⟨x, hx⟩; rfl)
#align quotient_group.equiv_quotient_subgroup_of_of_eq QuotientGroup.equivQuotientSubgroupOfOfEq
#align quotient_add_group.equiv_quotient_add_subgroup_of_of_eq QuotientAddGroup.equivQuotientAddSubgroupOfOfEq

section ZPow

variable {A B C : Type u} [CommGroup A] [CommGroup B] [CommGroup C]

variable (f : A →* B) (g : B →* A) (e : A ≃* B) (d : B ≃* C) (n : ℤ)

/-- The map of quotients by powers of an integer induced by a group homomorphism. -/
@[to_additive "The map of quotients by multiples of an integer induced by an additive group
homomorphism."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7c1f0539c96a6274cde51e0d637c0f49c1cadef7dfc71db9d9755a057ce98ff6.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fe02bb339deaef7cab640f95fddd229f644bb8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
