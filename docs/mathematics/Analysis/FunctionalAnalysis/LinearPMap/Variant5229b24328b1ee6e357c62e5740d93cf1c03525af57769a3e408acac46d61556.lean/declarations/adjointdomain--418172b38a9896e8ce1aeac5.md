# adjointDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad42d2f10409ae388effeb888036bb7e95bb71dd4e968641927446f2b99d6d2f",
  "kind": "def",
  "lexical_name": "adjointDomain",
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
  "slug": "adjointdomain--418172b38a9896e8ce1aeac5",
  "source": {
    "blob": "31f7d28198a95c423d9866a99cb1ed340e2ae343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 82,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:418172b38a9896e8ce1aeac52dbad1f3a6ee475a8c715aa0398faee5823ba676",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad42d2f10409ae388effeb888036bb7e95bb71dd4e968641927446f2b99d6d2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def adjointDomain : Submodule 𝕜 F where
  carrier := {y | Continuous ((innerₛₗ 𝕜 y).comp T.toFun)}
  zero_mem' := by
    rw [Set.mem_setOf_eq, LinearMap.map_zero, LinearMap.zero_comp]
    exact continuous_zero
  add_mem' hx hy := by rw [Set.mem_setOf_eq, LinearMap.map_add] at *; exact hx.add hy
  smul_mem' a x hx := by
    rw [Set.mem_setOf_eq, LinearMap.map_smulₛₗ] at *
    exact hx.const_smul (conj a)

/-- The operator `fun x ↦ ⟪y, T x⟫` considered as a continuous linear operator
from `T.adjointDomain` to `𝕜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LinearPMap/Variant5229b24328b1ee6e357c62e5740d93cf1c03525af57769a3e408acac46d61556.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31f7d28198a95c423d9866a99cb1ed340e2ae343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
