# solutionSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5777d1bd0db7a7ab903042cbf52fc0b1fc9a99ee1f3723397df78188d5ad75ac",
  "kind": "def",
  "lexical_name": "solutionSet",
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
  "slug": "solutionset--7748867ebe387f470da596bb",
  "source": {
    "blob": "1dca6880b27b2ae767b837ab97a05dad4c897064",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Imo1962Q4/Variantdaec9e663e84fa411249de8f90379a7db4d8b543b52a1d03e464d1af38691277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7748867ebe387f470da596bbc7ee278de1b23af6e285673f9d30cea537280623",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Imo1962Q4/Variantdaec9e663e84fa411249de8f90379a7db4d8b543b52a1d03e464d1af38691277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5777d1bd0db7a7ab903042cbf52fc0b1fc9a99ee1f3723397df78188d5ad75ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def solutionSet : Set ℝ :=
  {x : ℝ | ∃ k : ℤ, x = (2 * ↑k + 1) * π / 4 ∨ x = (2 * ↑k + 1) * π / 6}
#align imo1962_q4.solution_set Imo1962Q4.solutionSet

/-
The key to solving this problem simply is that we can rewrite the equation as
a product of terms, shown in `alt_formula`, being equal to zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Imo1962Q4/Variantdaec9e663e84fa411249de8f90379a7db4d8b543b52a1d03e464d1af38691277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Imo1962Q4/Variantdaec9e663e84fa411249de8f90379a7db4d8b543b52a1d03e464d1af38691277.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dca6880b27b2ae767b837ab97a05dad4c897064` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
