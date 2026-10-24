# OrientedKnotFillingTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ef49382e9f716d11d917d93f7b00de373f47af6fa285f2af64dd8982e052418",
  "kind": "structure",
  "lexical_name": "OrientedKnotFillingTheory",
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
  "slug": "orientedknotfillingtheory--eaf3f96d5d4c4e61bac9b0e7",
  "source": {
    "blob": "5180a2143be459a75f3cfc624ea7f3474d4f175e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 32,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaf3f96d5d4c4e61bac9b0e7d8b7b7b88097661de49cdda17e7f1c6ec1710022",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ef49382e9f716d11d917d93f7b00de373f47af6fa285f2af64dd8982e052418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OrientedKnotFillingTheory where
  Knot : Type u
  ClosedManifold : Type u
  Slope : Knot → Type u
  Filling : (K : Knot) → Slope K → ClosedManifold
  meridian : (K : Knot) → Slope K
  plusTwo : (K : Knot) → Slope K
  minusTwo : (K : Knot) → Slope K
  numerator : {K : Knot} → Slope K → Int
  denominator : {K : Knot} → Slope K → Int
  meridian_coefficients : ∀ K,
    numerator (meridian K) = 1 ∧ denominator (meridian K) = 0
  plusTwo_coefficients : ∀ K,
    numerator (plusTwo K) = 2 ∧ denominator (plusTwo K) = 1
  minusTwo_coefficients : ∀ K,
    numerator (minusTwo K) = 2 ∧ denominator (minusTwo K) = -1
  plusTwo_ne_minusTwo : ∀ K, plusTwo K ≠ minusTwo K
  OrientedHomeomorphism : ClosedManifold → ClosedManifold → Type u
  homeomorphismRefl : ∀ M, OrientedHomeomorphism M M
  homeomorphismSymm : ∀ {M N},
    OrientedHomeomorphism M N → OrientedHomeomorphism N M
  homeomorphismTrans : ∀ {M N P},
    OrientedHomeomorphism M N → OrientedHomeomorphism N P →
      OrientedHomeomorphism M P
  /-- Orientation-preserving self-homeomorphisms of the oriented knot exterior. -/
  OrientationPreservingExteriorSelfHomeomorphism : Knot → Type u
  actOnSlope : {K : Knot} →
    OrientationPreservingExteriorSelfHomeomorphism K → Slope K → Slope K
  Nontrivial : Knot → Prop
  HyperbolicKnot : Knot → Prop
  genus : Knot → Nat
  AlexanderPolynomialTrivial : Knot → Prop
  TauZero : Knot → Prop
  JonesAtFifthRootOne : Knot → Prop
  HyperbolicManifold : ClosedManifold → Prop

namespace OrientedKnotFillingTheory

variable (T : OrientedKnotFillingTheory)

/-- An actual orientation-preserving homeomorphism between two fillings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantdf7ddc7442cb2ab2da3b828efbfd4117444f6b99956400fe11bb1b66e268f606.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5180a2143be459a75f3cfc624ea7f3474d4f175e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
