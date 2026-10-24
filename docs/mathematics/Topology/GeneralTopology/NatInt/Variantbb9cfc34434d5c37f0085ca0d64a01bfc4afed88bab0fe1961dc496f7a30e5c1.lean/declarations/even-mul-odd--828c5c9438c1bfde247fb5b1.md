# even_mul_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "068846239a74b9cff04c456bcba142809ac58eca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e849919-0a79-0bd8-514b-818c95433b8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:416566dc-d806-e2ce-9fcd-613e45936878",
  "kind": "theorem",
  "lexical_name": "even_mul_odd",
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
  "slug": "even-mul-odd--828c5c9438c1bfde247fb5b1",
  "source": {
    "blob": "068846239a74b9cff04c456bcba142809ac58eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:828c5c9438c1bfde247fb5b15ea4ef2330bd8cf14e8703a01e8c070225d1fcc5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:416566dc-d806-e2ce-9fcd-613e45936878`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_mul_odd {f : ℕ → M} (he : HasProd (fun k ↦ f (2 * k)) m)
    (ho : HasProd (fun k ↦ f (2 * k + 1)) m') : HasProd f (m * m') := by
  have := mul_right_injective₀ (two_ne_zero' ℕ)
  replace ho := ((add_left_injective 1).comp this).hasProd_range_iff.2 ho
  refine (this.hasProd_range_iff.2 he).mul_isCompl ?_ ho
  simpa [Function.comp_def] using Nat.isCompl_even_odd

end ContinuousMul

end HasProd

namespace Multipliable

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068846239a74b9cff04c456bcba142809ac58eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
