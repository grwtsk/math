# foil_to_trunc_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c776b879-640f-bddf-fd3d-dc9f88a54400",
  "kind": "theorem",
  "lexical_name": "foil_to_trunc_remainder",
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
  "slug": "foil-to-trunc-remainder--23fcfb427163d5b0780e7e73",
  "source": {
    "blob": "6a776bf727e8916d67b87be3734405fd02bcef17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1253,
    "line": 1228,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23fcfb427163d5b0780e7e73c73f07a4f2ffaae4dc9ad1670ad0206ea7a708c1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c776b879-640f-bddf-fd3d-dc9f88a54400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1228–1253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foil_to_trunc_remainder {p1 p2 : Polynomial ℚ} {r1 r2 y : ℝ} {degree : ℕ}
    (hsplit : Polynomial.aeval y (p1 * p2) =
              Polynomial.aeval y (truncPoly (p1 * p2) degree) +
              Polynomial.aeval y (tailPoly (p1 * p2) degree)) :
    (Polynomial.aeval y p1 + r1) * (Polynomial.aeval y p2 + r2) =
    Polynomial.aeval y (truncPoly (p1 * p2) degree) +
      (Polynomial.aeval y (tailPoly (p1 * p2) degree) +
       Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2) := by
  have hpoly_mul : Polynomial.aeval y p1 * Polynomial.aeval y p2 =
                   Polynomial.aeval y (p1 * p2) :=
    ((Polynomial.aeval y).map_mul p1 p2).symm
  calc
    (Polynomial.aeval y p1 + r1) * (Polynomial.aeval y p2 + r2)
      = Polynomial.aeval y p1 * Polynomial.aeval y p2 +
        Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2 := by ring
    _ = Polynomial.aeval y (p1 * p2) +
        Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2 := by rw [hpoly_mul]
    _ = (Polynomial.aeval y (truncPoly (p1 * p2) degree) +
         Polynomial.aeval y (tailPoly (p1 * p2) degree)) +
        Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2 := by rw [hsplit]
    _ = Polynomial.aeval y (truncPoly (p1 * p2) degree) +
        (Polynomial.aeval y (tailPoly (p1 * p2) degree) +
         Polynomial.aeval y p1 * r2 + Polynomial.aeval y p2 * r1 + r1 * r2) := by ring

/-- Four-term remainder membership: tail + p1r2 + p2r1 + r1r2 ∈ totalRemainder.
This extracts the nested interval addition pattern from mul_evalSet_correct. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Core/Variantf7ccba4a2452268e4196188451b2ba840d13e8ac7bb4701acc0562d450391ca8.lean#L1228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a776bf727e8916d67b87be3734405fd02bcef17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
