# instMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b25f4f2143dcde9d4c0e6fd765e86fd4df08843d5c6ba01dedea140699535a5d",
  "kind": "instance",
  "lexical_name": "instMonoid",
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
  "slug": "instmonoid--b0eb2b65f0c11a4d4fbfc8cc",
  "source": {
    "blob": "e6eddbcf63c58cfa66319e284ed3a7b44c2a21f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 317,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b0eb2b65f0c11a4d4fbfc8cc8ba7d1fc3ff8abebd22886d246c2f9df6539c03f",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b25f4f2143dcde9d4c0e6fd765e86fd4df08843d5c6ba01dedea140699535a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instMonoid : Monoid (ArithmeticFunction R) :=
  { one := One.one
    mul := Mul.mul
    one_mul := one_smul'
    mul_one := fun f => by
      ext x
      rw [mul_apply]
      by_cases x0 : x = 0
      · simp [x0]
      have h : {(x, 1)} ⊆ divisorsAntidiagonal x := by simp [x0]
      rw [← sum_subset h]
      · simp
      intro ⟨y₁, y₂⟩ ymem ynotMem
      have y2ne : y₂ ≠ 1 := by
        intro con
        simp_all
      simp [y2ne]
    mul_assoc := mul_smul' }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variantcb0e7d252be467855dc23e728e44b92145d4f9d7f4a45028747b214f4075068c.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6eddbcf63c58cfa66319e284ed3a7b44c2a21f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
