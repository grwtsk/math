# subsemigroupCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:115b61db2afb4525900c906413ad20e5d0f78880c0396a12d43ec534d3be2e6f",
  "kind": "def",
  "lexical_name": "subsemigroupCongr",
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
  "slug": "subsemigroupcongr--60c9e17000af45b67445628b",
  "source": {
    "blob": "a913911449f948b07e521d658778a12a8de581ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 729,
    "line": 718,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantd1cee9d727b08e69745797a5c66fa933789ec25813a05c4f278c4871c87d8111.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60c9e17000af45b67445628b914c698e7b4e71a4eabce05d034c4e1c915f3b8d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantd1cee9d727b08e69745797a5c66fa933789ec25813a05c4f278c4871c87d8111.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:115b61db2afb4525900c906413ad20e5d0f78880c0396a12d43ec534d3be2e6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 718–729.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def subsemigroupCongr (h : S = T) : S ≃* T :=
  { Set.equivOfEq <| congr_arg _ h with map_mul' := fun _ _ => rfl }

-- this name is primed so that the version to `f.range` instead of `f.srange` can be unprimed.
/-- A semigroup homomorphism `f : M →ₙ* N` with a left-inverse `g : N → M` defines a multiplicative
equivalence between `M` and `f.srange`.

This is a bidirectional version of `MulHom.srangeRestrict`. -/
@[to_additive (attr := simps +simpRhs)
      /-- An additive semigroup homomorphism `f : M →+ N` with a left-inverse
      `g : N → M` defines an additive equivalence between `M` and `f.srange`.
      This is a bidirectional version of `AddHom.srangeRestrict`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantd1cee9d727b08e69745797a5c66fa933789ec25813a05c4f278c4871c87d8111.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Operations/Variantd1cee9d727b08e69745797a5c66fa933789ec25813a05c4f278c4871c87d8111.lean#L718).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a913911449f948b07e521d658778a12a8de581ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
