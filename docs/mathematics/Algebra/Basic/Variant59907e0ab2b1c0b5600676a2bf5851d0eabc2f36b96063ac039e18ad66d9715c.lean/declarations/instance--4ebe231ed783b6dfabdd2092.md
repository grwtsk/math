# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe50e031ee34b3b0b779c187c2d6b5d54d4091f84ea539ff5452309cbda5b894",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4ebe231ed783b6dfabdd2092",
  "source": {
    "blob": "ee4860c65d0d61ca8e3eb05104e2fc573c3af3b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 69,
    "path": "GRWTSK/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ebe231ed783b6dfabdd2092844ffee3bbae5d840406a3be0e526031609e75bf",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe50e031ee34b3b0b779c187c2d6b5d54d4091f84ea539ff5452309cbda5b894`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (C : Type*) [CommRing C] [Algebra A C] [Algebra B C] [IsScalarTower A B C]
    [MulSemiringAction G C] [IsGaloisGroup G A C] : IsGaloisGroup G (algebraMap A B).range C :=
  .of_ringHom_surjective G A (algebraMap A B).range C (algebraMap A B).rangeRestrict
    (fun x ↦ (IsScalarTower.algebraMap_apply A B C x).symm)
      (algebraMap A B).rangeRestrict_surjective

/-- `IsGaloisGroup` for rings implies `IsGaloisGroup` for their fraction fields. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant59907e0ab2b1c0b5600676a2bf5851d0eabc2f36b96063ac039e18ad66d9715c.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4860c65d0d61ca8e3eb05104e2fc573c3af3b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
