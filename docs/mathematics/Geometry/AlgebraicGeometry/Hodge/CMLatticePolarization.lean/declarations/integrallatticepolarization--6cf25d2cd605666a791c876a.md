# IntegralLatticePolarization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71cc8b599ad8937eb66964568a4fcaa7d7e53fb1c00323c2d3d135322d147760",
  "kind": "structure",
  "lexical_name": "IntegralLatticePolarization",
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
  "slug": "integrallatticepolarization--6cf25d2cd605666a791c876a",
  "source": {
    "blob": "19e703009cbd6ce4e9005b05b735e9b806d9c3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 180,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMLatticePolarization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cf25d2cd605666a791c876a02c8f5c9e2fd536ef0cf8ab2e5af2603ce172a62",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71cc8b599ad8937eb66964568a4fcaa7d7e53fb1c00323c2d3d135322d147760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IntegralLatticePolarization
    (v : OddSignRow E)
    (X : SignControlledXi E v) where
  scale : ℕ
  scale_ne_zero : scale ≠ 0
  vector : (Fin n → ℤ) → E
  vector_injective : Function.Injective vector
  pairing : (Fin n → ℤ) → (Fin n → ℤ) → ℤ
  scaled_pairing :
    ∀ a b,
      (scale : ℚ) * tracePairing E X.xi (vector a) (vector b) =
        (pairing a b : ℚ)
  alternating : ∀ a, pairing a a = 0

/-- Canonical finite-basis integer lattice and denominator-cleared pairing. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMLatticePolarization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMLatticePolarization.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19e703009cbd6ce4e9005b05b735e9b806d9c3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
