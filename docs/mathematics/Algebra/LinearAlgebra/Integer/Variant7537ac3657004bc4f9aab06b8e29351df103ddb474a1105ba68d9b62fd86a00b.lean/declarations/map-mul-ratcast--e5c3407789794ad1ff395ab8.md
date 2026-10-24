# map_mul_ratCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f187f9c4-5ff3-9b38-fca2-a3189efa212f",
  "kind": "lemma",
  "lexical_name": "map_mul_ratCast",
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
  "slug": "map-mul-ratcast--e5c3407789794ad1ff395ab8",
  "source": {
    "blob": "86f406e3a9c638fe4f14e50a5019f2584ea63c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5c3407789794ad1ff395ab8d2140b6b7a66a5f24ee521c16eb6a77437345ba9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f187f9c4-5ff3-9b38-fca2-a3189efa212f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_mul_ratCast {α : Type*} [DivisionRing α] [CharZero α] (A B : Matrix n n ℚ) :
    map (A * B) ((↑) : ℚ → α) = map A (↑) * map B (↑) :=
  Matrix.map_mul (f := Rat.castHom α)

/-!
## Denominator of a rational matrix
-/

/-- The denominator of a matrix of rationals (as a `Nat`, defined as the LCM of the denominators of
the entries). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Integer/Variant7537ac3657004bc4f9aab06b8e29351df103ddb474a1105ba68d9b62fd86a00b.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f406e3a9c638fe4f14e50a5019f2584ea63c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
