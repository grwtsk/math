# resolvent_commute_all

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdf9d48707cf9984996c02d232aaa3cd14ed56b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cd9bd48f-4aba-22a1-101a-30ab72ef87d9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5795046-d0eb-bec1-15e3-59bf7307072c",
  "kind": "theorem",
  "lexical_name": "resolvent_commute_all",
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
  "slug": "resolvent-commute-all--64a1dad32ec4e01a4241a77a",
  "source": {
    "blob": "bdf9d48707cf9984996c02d232aaa3cd14ed56b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 169,
    "path": "GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64a1dad32ec4e01a4241a77a5c048362c3596af91da709d35585fa5d828604d2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5795046-d0eb-bec1-15e3-59bf7307072c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvent_commute_all (a : B) (z : R) : Commute (resolvent a z) a := by
  by_cases hz : z ∈ spectrum R a
  · rw [spectrum.resolvent_zero_of_mem_spectrum hz]
    exact Commute.zero_left a
  · have hden : Commute (↑ₐ z - a) a := by
      rw [Commute, SemiconjBy]
      simp only [sub_mul, mul_sub]
      rw [Algebra.commutes]
    rw [spectrum.resolvent_eq (spectrum.notMem_iff.mp hz)]
    exact hden.units_inv_left

end CommutativeScalars

/-! ## Normalized circular integrals -/

/-- The normalized complex circle integral of a Banach-valued function. -/
@[expose, surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/RieszCircle/Variant805948ccf47aae65b030296389067f878d9d5afce83aa50bea22b67e0c179f49.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdf9d48707cf9984996c02d232aaa3cd14ed56b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
