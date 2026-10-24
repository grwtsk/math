# residueUnitBitHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca3f0df715f1271b16c337a6e5d5847ee2acf0468e81c3726286f3bf5e787017",
  "kind": "def",
  "lexical_name": "residueUnitBitHom",
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
  "slug": "residueunitbithom--6b8f8b46e8917c1e05c78bd2",
  "source": {
    "blob": "90f1d3a58ee3e654d0b1b43d7a1d3eee4b575086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 67,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b8f8b46e8917c1e05c78bd286c60494a97b8063eee35294c5bbfb91f7caee47",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca3f0df715f1271b16c337a6e5d5847ee2acf0468e81c3726286f3bf5e787017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def residueUnitBitHom (p : ℕ) [Fact p.Prime] :
    (ZMod p)ˣ →* Multiplicative (ZMod 2) where
  toFun u :=
    Multiplicative.ofAdd (signBit (quadraticChar (ZMod p) (u : ZMod p)))
  map_one' := by
    change Multiplicative.ofAdd
      (signBit (quadraticChar (ZMod p) (1 : ZMod p))) = 1
    simp [signBit]
  map_mul' u v := by
    change Multiplicative.ofAdd
        (signBit (quadraticChar (ZMod p) ((u * v : (ZMod p)ˣ) : ZMod p))) =
      Multiplicative.ofAdd (signBit (quadraticChar (ZMod p) (u : ZMod p))) *
      Multiplicative.ofAdd (signBit (quadraticChar (ZMod p) (v : ZMod p)))
    have hu : quadraticChar (ZMod p) (u : ZMod p) = 1 ∨
        quadraticChar (ZMod p) (u : ZMod p) = -1 :=
      quadraticChar_dichotomy (Units.ne_zero u)
    have hv : quadraticChar (ZMod p) (v : ZMod p) = 1 ∨
        quadraticChar (ZMod p) (v : ZMod p) = -1 :=
      quadraticChar_dichotomy (Units.ne_zero v)
    calc
      Multiplicative.ofAdd
          (signBit (quadraticChar (ZMod p) ((u * v : (ZMod p)ˣ) : ZMod p))) =
        Multiplicative.ofAdd
          (signBit (quadraticChar (ZMod p) (u : ZMod p) *
            quadraticChar (ZMod p) (v : ZMod p))) := by
              simp only [Units.val_mul, map_mul]
      _ = Multiplicative.ofAdd
          (signBit (quadraticChar (ZMod p) (u : ZMod p)) +
            signBit (quadraticChar (ZMod p) (v : ZMod p))) :=
          congrArg Multiplicative.ofAdd (signBit_mul _ _ hu hv)
      _ = _ := rfl

/-- ZMod 2 has exponent two as an additive group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239LocalSquareClass.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90f1d3a58ee3e654d0b1b43d7a1d3eee4b575086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
