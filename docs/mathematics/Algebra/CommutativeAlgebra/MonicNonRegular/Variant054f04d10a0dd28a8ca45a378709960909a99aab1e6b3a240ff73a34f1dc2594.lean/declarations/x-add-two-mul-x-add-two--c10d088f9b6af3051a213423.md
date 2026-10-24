# X_add_two_mul_X_add_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d77e4b7-b6e3-93ed-60e0-e838bc131384",
  "kind": "theorem",
  "lexical_name": "X_add_two_mul_X_add_two",
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
  "slug": "x-add-two-mul-x-add-two--c10d088f9b6af3051a213423",
  "source": {
    "blob": "485529f53ea6239e5e291b466c6e72cac30fadd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c10d088f9b6af3051a21342324c7ab60289b10797cf7d77c44dab5c2048dad78",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d77e4b7-b6e3-93ed-60e0-e838bc131384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_add_two_mul_X_add_two : (X + C 2 : N₃[X]) * (X + C 2) = (X + C 2) * (X + C 3) := by
  simp only [mul_add, add_mul, X_mul, add_assoc]
  apply congr_arg
  rw [← add_assoc, ← add_mul, ← C_add, ← C_mul, ← C_mul]
  rw [← add_assoc, ← add_mul, ← C_add]
  rfl

/-! The main example: multiplication by the polynomial `X + 2` is not injective,
yet the polynomial is monic. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MonicNonRegular/Variant054f04d10a0dd28a8ca45a378709960909a99aab1e6b3a240ff73a34f1dc2594.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `485529f53ea6239e5e291b466c6e72cac30fadd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
