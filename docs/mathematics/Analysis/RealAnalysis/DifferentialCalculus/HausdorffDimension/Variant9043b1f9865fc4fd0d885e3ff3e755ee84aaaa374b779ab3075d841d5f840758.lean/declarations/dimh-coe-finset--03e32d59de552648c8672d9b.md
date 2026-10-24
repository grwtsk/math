# dimH_coe_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91f2d244-69d2-dfa6-9e5f-e670c033706e",
  "kind": "theorem",
  "lexical_name": "dimH_coe_finset",
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
  "slug": "dimh-coe-finset--03e32d59de552648c8672d9b",
  "source": {
    "blob": "313d5c7269d9d85022ff9a6eddfbde0b3c924326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 210,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03e32d59de552648c8672d9be1cb09a6b2a0a838ea5762527163f0db5fe644e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91f2d244-69d2-dfa6-9e5f-e670c033706e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 210–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dimH_coe_finset (s : Finset X) : dimH (s : Set X) = 0 :=
  s.finite_toSet.dimH_zero

alias Finset.dimH_zero := dimH_coe_finset

/-!
### Hausdorff dimension as the supremum of local Hausdorff dimensions
-/


section

variable [SecondCountableTopology X]

/-- If `r` is less than the Hausdorff dimension of a set `s` in an (extended) metric space with
second countable topology, then there exists a point `x ∈ s` such that every neighborhood
`t` of `x` within `s` has Hausdorff dimension greater than `r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant9043b1f9865fc4fd0d885e3ff3e755ee84aaaa374b779ab3075d841d5f840758.lean#L210).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `313d5c7269d9d85022ff9a6eddfbde0b3c924326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
