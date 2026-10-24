# decidableEqMonoidHomFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45b07512ab3fac5daffc11227460ee51512a76a58e8f9fbfd45a67d3290fc1ad",
  "kind": "instance",
  "lexical_name": "decidableEqMonoidHomFintype",
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
  "slug": "decidableeqmonoidhomfintype--640b387a31814b05981d5295",
  "source": {
    "blob": "15a4d359f65f18c7aebf13349fd93f47a203a9ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 381,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc1c65510353a0490619d9784e5a0b13bce335ee566949f343feddafad62a1e9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:640b387a31814b05981d52959082e4e47486cd13279f01fe844b71de89fa08c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantc1c65510353a0490619d9784e5a0b13bce335ee566949f343feddafad62a1e9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45b07512ab3fac5daffc11227460ee51512a76a58e8f9fbfd45a67d3290fc1ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableEqMonoidHomFintype [DecidableEq β] [Fintype α] [MulOneClass α] [MulOneClass β] :
    DecidableEq (α →* β) := fun a b =>
  decidable_of_iff ((a : α → β) = b) (Injective.eq_iff FunLike.coe_injective)
#align fintype.decidable_eq_monoid_hom_fintype Fintype.decidableEqMonoidHomFintype
#align fintype.decidable_eq_add_monoid_hom_fintype Fintype.decidableEqAddMonoidHomFintype

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantc1c65510353a0490619d9784e5a0b13bce335ee566949f343feddafad62a1e9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantc1c65510353a0490619d9784e5a0b13bce335ee566949f343feddafad62a1e9d.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15a4d359f65f18c7aebf13349fd93f47a203a9ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
