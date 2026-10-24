# oppositeEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2edaf5ce6fed06440b80f4ea4c9d9ecba201f832e64abd4badcaa2f259430e46",
  "kind": "def",
  "lexical_name": "oppositeEquivalence",
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
  "slug": "oppositeequivalence--e84dcf19477c9f07470e9797",
  "source": {
    "blob": "afdd6b85cfa5d9f0102292dbe1c6169f7d257028",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant80afe373877131f2b22074637fb7e628b147b114747762cdead9f0ce8aff6401.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e84dcf19477c9f07470e9797a3c5663fff773b1a9f3848492a1612be3d9d03c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant80afe373877131f2b22074637fb7e628b147b114747762cdead9f0ce8aff6401.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2edaf5ce6fed06440b80f4ea4c9d9ecba201f832e64abd4badcaa2f259430e46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oppositeEquivalence (A : Type*) : (Codiscrete A)ᵒᵖ ≌ Codiscrete A where
  functor := functor (fun x ↦ Codiscrete.as x.unop)
  inverse := (functor (fun x ↦ Codiscrete.as x.unop)).rightOp
  unitIso := NatIso.ofComponents (fun _ => by exact Iso.refl _)
  counitIso := natIso

/-- `Codiscrete.functorToCat` turns a type into a codiscrete category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant80afe373877131f2b22074637fb7e628b147b114747762cdead9f0ce8aff6401.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CodiscreteCategory/Variant80afe373877131f2b22074637fb7e628b147b114747762cdead9f0ce8aff6401.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afdd6b85cfa5d9f0102292dbe1c6169f7d257028` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
