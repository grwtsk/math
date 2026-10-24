# alternatingConstHomologyDataEvenNEZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f416bd3fcc033c96bc50a0de9651b7dc9ade97d9ff288c4ac7e1461f50bb0bf6",
  "kind": "def",
  "lexical_name": "alternatingConstHomologyDataEvenNEZero",
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
  "slug": "alternatingconsthomologydataevennezero--c13bed12ae9a00abfa4c94f6",
  "source": {
    "blob": "d3b74ecf5b038954e6a47b465fa1e7b96dd8da86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c13bed12ae9a00abfa4c94f6cc127c611f8fbf06e67af543a723a7d1f3026eaf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f416bd3fcc033c96bc50a0de9651b7dc9ade97d9ff288c4ac7e1461f50bb0bf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def alternatingConstHomologyDataEvenNEZero (X : C) (n : ℕ) (hn : Even n) (h₀ : n ≠ 0) :
    ((alternatingConst.obj X).sc n).HomologyData :=
  .ofIsLimitKernelFork _ (by simp [Nat.even_add_one, hn]) _
    (Limits.zeroKernelOfCancelZero _ (by cases n <;> simp_all))

/-- The `n`-th homology of the alternating constant complex is zero for odd `n`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant91a2aa50c1b29a0dadcf75663ab2b37cf7e4d7e2746ecd02c6e5841e8e72da58.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b74ecf5b038954e6a47b465fa1e7b96dd8da86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
