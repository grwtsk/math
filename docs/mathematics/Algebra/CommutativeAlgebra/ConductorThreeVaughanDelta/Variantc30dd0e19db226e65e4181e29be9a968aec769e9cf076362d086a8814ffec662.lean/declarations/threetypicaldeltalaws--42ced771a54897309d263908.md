# ThreeTypicalDeltaLaws

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe851d9da596c2dc3cffed4cb5f34c1f3c44d606eba80c660f96951edabf9198",
  "kind": "structure",
  "lexical_name": "ThreeTypicalDeltaLaws",
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
  "slug": "threetypicaldeltalaws--42ced771a54897309d263908",
  "source": {
    "blob": "26f14dd2b5fc4ab94128f96f9ae576b9fc2c57fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 72,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc30dd0e19db226e65e4181e29be9a968aec769e9cf076362d086a8814ffec662.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42ced771a54897309d2639086add9d828c052f229f7103ba3cd9da55e1f02037",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc30dd0e19db226e65e4181e29be9a968aec769e9cf076362d086a8814ffec662.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe851d9da596c2dc3cffed4cb5f34c1f3c44d606eba80c660f96951edabf9198`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ThreeTypicalDeltaLaws
    (A : Type*) [CommRing A]
    (operation : ThreeTypicalDeltaOperation A) : Prop where
  delta_zero : operation.delta 0 = 0
  delta_one : operation.delta 1 = 0
  delta_add : ∀ a b,
    operation.delta (a + b) =
      operation.delta a + operation.delta b - a ^ 2 * b - a * b ^ 2
  delta_mul : ∀ a b,
    operation.delta (a * b) =
      a ^ 3 * operation.delta b + b ^ 3 * operation.delta a +
        3 * operation.delta a * operation.delta b

/-- The identity-Frobenius three-typical delta operation on `ℂ`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc30dd0e19db226e65e4181e29be9a968aec769e9cf076362d086a8814ffec662.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ConductorThreeVaughanDelta/Variantc30dd0e19db226e65e4181e29be9a968aec769e9cf076362d086a8814ffec662.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f14dd2b5fc4ab94128f96f9ae576b9fc2c57fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
