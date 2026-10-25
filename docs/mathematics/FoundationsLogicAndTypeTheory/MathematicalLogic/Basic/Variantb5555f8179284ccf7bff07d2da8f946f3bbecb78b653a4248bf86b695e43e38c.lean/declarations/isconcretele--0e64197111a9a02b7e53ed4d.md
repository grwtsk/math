# IsConcreteLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:781e3207062364ff17e7a4a8e1bdd1a896a3c89c5a592b8b801a647c26e7a3ee",
  "kind": "class",
  "lexical_name": "IsConcreteLE",
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
  "slug": "isconcretele--0e64197111a9a02b7e53ed4d",
  "source": {
    "blob": "cef0ed326f14ab48a08dba96fd2e8e1264d66679",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 227,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5555f8179284ccf7bff07d2da8f946f3bbecb78b653a4248bf86b695e43e38c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e64197111a9a02b7e53ed4da4b652e68c45fcf3d26331da2830d3077554c134",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5555f8179284ccf7bff07d2da8f946f3bbecb78b653a4248bf86b695e43e38c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:781e3207062364ff17e7a4a8e1bdd1a896a3c89c5a592b8b801a647c26e7a3ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsConcreteLE (A : Type*) (B : outParam Type*) [SetLike A B] [LE A] where
  /-- The coercion from a `SetLike` type preserves the ordering. -/
  protected coe_subset_coe' {S T : A} : SetLike.coe S ⊆ SetLike.coe T ↔ S ≤ T

section default

variable (A B : Type*) [SetLike A B]

/-- The order induced from a `SetLike` instance by inclusion.

An order defined as `.ofSetLike` will automatically make available an instance
of `IsConcreteLE`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5555f8179284ccf7bff07d2da8f946f3bbecb78b653a4248bf86b695e43e38c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb5555f8179284ccf7bff07d2da8f946f3bbecb78b653a4248bf86b695e43e38c.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cef0ed326f14ab48a08dba96fd2e8e1264d66679` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
