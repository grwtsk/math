# complexDirichletSeries_absSummable_of_bounded_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:666eba2b-026e-7b5b-77a4-9167d1eb6326",
  "kind": "theorem",
  "lexical_name": "complexDirichletSeries_absSummable_of_bounded_coeff",
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
  "slug": "complexdirichletseries-abssummable-of-bounded-coeff--bd81fd1638e8843e8f881124",
  "source": {
    "blob": "2ec836b78837d40512a8dd164142791f01dbef8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 41,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd81fd1638e8843e8f881124c04fbbaf0569c56e315e91427b8f558c19e3a59a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:666eba2b-026e-7b5b-77a4-9167d1eb6326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complexDirichletSeries_absSummable_of_bounded_coeff
    (a : ArithFn Complex)
    {s : Complex}
    {C : Real}
    (hs : 1 < s.re)
    (hC : 0 ≤ C)
    (hbound : ∀ n : Nat, ‖a n‖ ≤ C) :
    ComplexDirichletAbsSummable a s := by
  have hmajor :
      Summable fun n : Nat => C * posWeightReal s.re n :=
    (summable_posWeightReal_of_one_lt hs).mul_left C
  refine Summable.of_nonneg_of_le (fun n => norm_nonneg _) ?_ hmajor
  intro n
  calc
    ‖complexDirichletTerm a s n‖
        = ‖a n‖ * ‖complexWeight s n‖ := by
            simp [complexDirichletTerm]
    _ ≤ C * posWeightReal s.re n :=
            mul_le_mul (hbound n) (norm_complexWeight_le_posWeightReal_re s n)
              (norm_nonneg _) hC

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ComplexDirichletSeries/Variant8a9f363479f8200d77be88b109bf13541006f1bb57832262ce4c8c9f01210668.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ec836b78837d40512a8dd164142791f01dbef8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
