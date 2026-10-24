# mul_mem_endpoints_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56cdac95e948a2869941c643f4530564b80ff353",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fe2102f6-d4c2-5b31-545e-9addd6bf0cb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d0aa8df-628b-2061-20af-2449889679d3",
  "kind": "theorem",
  "lexical_name": "mul_mem_endpoints_left",
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
  "slug": "mul-mem-endpoints-left--32330bc061e7bb615ac73bda",
  "source": {
    "blob": "56cdac95e948a2869941c643f4530564b80ff353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 223,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32330bc061e7bb615ac73bda1ebbcc4b14a4d678bdf281d1d64246599622bdbb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d0aa8df-628b-2061-20af-2449889679d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mul_mem_endpoints_left {x a₁ a₂ y : ℝ}
    (ha : a₁ ≤ x ∧ x ≤ a₂) :
    min (a₁ * y) (a₂ * y) ≤ x * y ∧ x * y ≤ max (a₁ * y) (a₂ * y) := by
  by_cases! hy : 0 ≤ y
  · -- y ≥ 0: multiplication preserves order, so a₁*y ≤ x*y ≤ a₂*y
    have h1 : a₁ * y ≤ x * y := mul_le_mul_of_nonneg_right ha.1 hy
    have h2 : x * y ≤ a₂ * y := mul_le_mul_of_nonneg_right ha.2 hy
    constructor
    · exact le_trans (min_le_left _ _) h1
    · exact le_trans h2 (le_max_right _ _)
  · -- y < 0: multiplication reverses order, so a₂*y ≤ x*y ≤ a₁*y
    have hy' := le_of_lt hy
    have h1 : a₂ * y ≤ x * y := mul_le_mul_of_nonpos_right ha.2 hy'
    have h2 : x * y ≤ a₁ * y := mul_le_mul_of_nonpos_right ha.1 hy'
    constructor
    · exact le_trans (min_le_right _ _) h1
    · exact le_trans h2 (le_max_left _ _)

/-- Helper: for y ∈ [b₁, b₂], x*y lies between endpoint products.
    When x ≥ 0: x*b₁ ≤ x*y ≤ x*b₂
    When x ≤ 0: x*b₂ ≤ x*y ≤ x*b₁ -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant067b8a4c5dc76279bc46c9abb0deec8efa16285561aaebc5ca612406de28ac66.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56cdac95e948a2869941c643f4530564b80ff353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
