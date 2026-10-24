# toSubspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f15e789a3fd1b0fa5f36b651d6b3e05bbcd2190132a1c42c35a9335ae9ea28d5",
  "kind": "def",
  "lexical_name": "toSubspace",
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
  "slug": "tosubspace--9d77c3eaf1572751b7040edc",
  "source": {
    "blob": "e0017abf6ab8f869a94f88536adaa70553428dcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d77c3eaf1572751b7040edc2641f2673c521795bbf1df1438a214a3c5e7cc3d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f15e789a3fd1b0fa5f36b651d6b3e05bbcd2190132a1c42c35a9335ae9ea28d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSubspace (x : Chart24) :
    {S : Submodule ℝ (Fin 4 → ℝ) // Module.finrank ℝ S = 2} :=
  ⟨frameRowSpace x.matrix, finrank_frameRowSpace_of_columnMinor_ne_zero
    x.matrix ![0, 1] (by rw [pivot_eq_one]; norm_num)⟩

/-- Recognition reaches the ordinary subspace convention of the Grassmannian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PivotFixtures/Variantacf9a505fb70fce58344cf1aaf9e4962e4e6f31a5936fa72255614b440d82a5e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0017abf6ab8f869a94f88536adaa70553428dcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
