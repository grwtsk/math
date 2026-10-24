# Asymptotics.isEquivalent_nat_ceil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ac467dd-0531-145d-fe1f-fe0d9eac2b29",
  "kind": "theorem",
  "lexical_name": "Asymptotics.isEquivalent_nat_ceil",
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
  "slug": "asymptotics-isequivalent-nat-ceil--0c8f3d37a1ab240d41176073",
  "source": {
    "blob": "96b0a12eda2bb2e1500eecbbe61263b7a99e7fcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 214,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c8f3d37a1ab240d41176073ab762d4f488e593e4f933864bcb83bc066ca4bd5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ac467dd-0531-145d-fe1f-fe0d9eac2b29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Asymptotics.isEquivalent_nat_ceil :
    (fun (x : R) ↦ ↑⌈x⌉₊) ~[atTop] (fun x ↦ x) :=
  isEquivalent_of_tendsto_one tendsto_nat_ceil_div_atTop

end NormedLinearOrderedField

section boundedRange

/-!
## Bounded Range versus `IsBigO` Asymptotics

For a continuous function `f` into a seminormed space, having bounded range is equivalent to being
`O(1)` along the cocompact filter (`Continuous.isBounded_range_iff_isBigO`). On an unbounded linear
order whose order topology has compact intervals, this means being `O(1)` along both `atTop` and
`atBot` (`Continuous.isBounded_range_iff_isBigO_atTop_atBot`). For an even function a single `O(1)`
bound along `atTop` already suffices (`Continuous.isBounded_range_iff_isBigO_atTop_of_even`).
-/

variable
  {E : Type*} [SeminormedAddCommGroup E]
  {D : Type*} [TopologicalSpace D]
  {β : Type*} [TopologicalSpace β] [LinearOrder β] [OrderClosedTopology β] [CompactIccSpace β]
    [NoMaxOrder β] [NoMinOrder β]

/--
A continuous function `f` has bounded range if and only if it is `O(1)` with respect to the
cocompact filter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SpecificAsymptotics/Variante7bdb4f93595cb9847fe1b61fc189ded16aac5c177692ec9441d3e0e451fe0d0.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96b0a12eda2bb2e1500eecbbe61263b7a99e7fcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
