# single_mul_eq_updateRow_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3583add9-fdca-92da-63ab-994ea93ed53e",
  "kind": "theorem",
  "lexical_name": "single_mul_eq_updateRow_zero",
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
  "slug": "single-mul-eq-updaterow-zero--dae87eadbdfc1a42136319e9",
  "source": {
    "blob": "09a8f85f8f04592bbae9dfe9dc64635acdcb53d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 457,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae87eadbdfc1a42136319e9d2154b6910809262ac1cd7da5ce506c06b679e2a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3583add9-fdca-92da-63ab-994ea93ed53e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_mul_eq_updateRow_zero
    [DecidableEq l] [DecidableEq m] [Fintype m] [NonUnitalNonAssocSemiring α]
    (i : l) (j : m) (r : α) (B : Matrix m n α) :
    single i j r * B = updateRow 0 i (r • B.row j) := by
  rw [single_eq_updateRow_zero, updateRow_mul, Matrix.zero_mul, single_vecMul]

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RowCol/Variante91443aef6cc9a95bafd24151f21a2b813bbd9a0888ca3ebfae3722f560ba6d7.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a8f85f8f04592bbae9dfe9dc64635acdcb53d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
