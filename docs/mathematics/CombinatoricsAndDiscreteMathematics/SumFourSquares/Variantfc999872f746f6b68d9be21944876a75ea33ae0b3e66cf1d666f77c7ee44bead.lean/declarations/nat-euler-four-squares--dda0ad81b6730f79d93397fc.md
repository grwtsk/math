# Nat.euler_four_squares

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e57c60b-7b8a-ae0c-dcc7-0bcbdafafe63",
  "kind": "theorem",
  "lexical_name": "Nat.euler_four_squares",
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
  "slug": "nat-euler-four-squares--dda0ad81b6730f79d93397fc",
  "source": {
    "blob": "49873e512556cbd7faa9cde8fc26823e994d9ed5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda0ad81b6730f79d93397fc50393d3baeb6d8c855cc129f4c12ba971075f80d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e57c60b-7b8a-ae0c-dcc7-0bcbdafafe63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nat.euler_four_squares (a b c d x y z w : ℕ) :
    ((a : ℤ) * x - b * y - c * z - d * w).natAbs ^ 2 +
      ((a : ℤ) * y + b * x + c * w - d * z).natAbs ^ 2 +
      ((a : ℤ) * z - b * w + c * x + d * y).natAbs ^ 2 +
      ((a : ℤ) * w + b * z - c * y + d * x).natAbs ^ 2 =
      (a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2) * (x ^ 2 + y ^ 2 + z ^ 2 + w ^ 2) := by
  rw [← Int.coe_nat_inj']
  push_cast
  simp only [sq_abs, _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.EulerFourSquares.Variant72d0b0a9e4c41618a2b2f022aa31a2c1937282cf39b9f42d1ca9b7d6ed2d94fc.euler_four_squares]

namespace Int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SumFourSquares/Variantfc999872f746f6b68d9be21944876a75ea33ae0b3e66cf1d666f77c7ee44bead.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49873e512556cbd7faa9cde8fc26823e994d9ed5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
