# pointwiseNonnegativeMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:225d54cb22e7b947960556967d6c5b5e7863429b34d4061c21fda54514e9a036",
  "kind": "def",
  "lexical_name": "pointwiseNonnegativeMatrix",
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
  "slug": "pointwisenonnegativematrix--e01d1cd10121a8e949421f48",
  "source": {
    "blob": "a15d1f6be688c3b0b304beaeac98d942537e03b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e01d1cd10121a8e949421f48cb81d615a4d3dbcd4d290e5f51b3db6f4d17d155",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:225d54cb22e7b947960556967d6c5b5e7863429b34d4061c21fda54514e9a036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pointwiseNonnegativeMatrix
    (rows columns : Nat) :
    PositiveCone (Matrix (Fin rows) (Fin columns) ℝ) where
  carrier := {matrix | ∀ row column, 0 ≤ matrix row column}
  zero_mem := by intro row column; simp
  add_mem := by
    intro left right hleft hright row column
    exact add_nonneg (hleft row column) (hright row column)
  smul_nonnegative_mem := by
    intro scalar matrix hscalar hmatrix row column
    exact mul_nonneg hscalar (hmatrix row column)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variante98c247faeb5015de367eb3bc27fc3645533bd19e02f177ab50452e6f23c0434.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a15d1f6be688c3b0b304beaeac98d942537e03b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
