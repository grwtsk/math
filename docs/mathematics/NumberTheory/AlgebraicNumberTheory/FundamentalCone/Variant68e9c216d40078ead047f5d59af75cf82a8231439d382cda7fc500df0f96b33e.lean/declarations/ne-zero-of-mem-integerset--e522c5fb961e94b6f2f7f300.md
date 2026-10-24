# ne_zero_of_mem_integerSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8937fdea-b7c5-c008-b0ec-95c0ccbc4a15",
  "kind": "theorem",
  "lexical_name": "ne_zero_of_mem_integerSet",
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
  "slug": "ne-zero-of-mem-integerset--e522c5fb961e94b6f2f7f300",
  "source": {
    "blob": "14937dc62d4fec76769bc748423b8cd19e70d07c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 287,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e522c5fb961e94b6f2f7f3005b36bdb478b08a5246e127c419733cad502a1978",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8937fdea-b7c5-c008-b0ec-95c0ccbc4a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ne_zero_of_mem_integerSet (a : integerSet K) : (a : mixedSpace K) ≠ 0 := by
  by_contra!
  exact a.prop.1.2 (this.symm ▸ mixedEmbedding.norm.map_zero')

open scoped nonZeroDivisors

/-- For `a : integerSet K`, the unique nonzero algebraic integer `x` such that its image by
`mixedEmbedding` is equal to `a`. Note that we state the fact that `x ≠ 0` by saying that `x` is
a nonzero divisors since we will use later on the isomorphism
`Ideal.associatesNonZeroDivisorsEquivIsPrincipal`, see `integerSetEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant68e9c216d40078ead047f5d59af75cf82a8231439d382cda7fc500df0f96b33e.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14937dc62d4fec76769bc748423b8cd19e70d07c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
