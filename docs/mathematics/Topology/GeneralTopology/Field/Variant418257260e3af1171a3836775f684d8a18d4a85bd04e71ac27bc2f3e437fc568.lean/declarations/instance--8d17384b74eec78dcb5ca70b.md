# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39fe1994b938ed92fc33c7aa0cd68fb056665cd4567d77edf6d3c9af6eb280f3",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8d17384b74eec78dcb5ca70b",
  "source": {
    "blob": "ca0fea7479daa4499bca019661f97d2f341fb713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant418257260e3af1171a3836775f684d8a18d4a85bd04e71ac27bc2f3e437fc568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d17384b74eec78dcb5ca70b9c52abb2f5c5258c25cb0479cbfe3ec7d804c06b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant418257260e3af1171a3836775f684d8a18d4a85bd04e71ac27bc2f3e437fc568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39fe1994b938ed92fc33c7aa0cd68fb056665cd4567d77edf6d3c9af6eb280f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsStrictOrderedRing.toContinuousInv₀ [ContinuousMul 𝕜] :
    ContinuousInv₀ 𝕜 := .of_nhds_one <| tendsto_order.2 <| by
  refine ⟨fun x hx => ?_, fun x hx => ?_⟩
  · obtain ⟨x', h₀, hxx', h₁⟩ : ∃ x', 0 < x' ∧ x ≤ x' ∧ x' < 1 :=
      ⟨max x (1 / 2), one_half_pos.trans_le (le_max_right _ _), le_max_left _ _,
        max_lt hx one_half_lt_one⟩
    filter_upwards [Ioo_mem_nhds one_pos ((one_lt_inv₀ h₀).2 h₁)] with y hy
    exact hxx'.trans_lt <| lt_inv_of_lt_inv₀ hy.1 hy.2
  · filter_upwards [Ioi_mem_nhds (inv_lt_one_of_one_lt₀ hx)] with y hy
    exact inv_lt_of_inv_lt₀ (by positivity) hy

end Semifield

/-- If a (possibly non-unital and/or non-associative) ring `R` admits a submultiplicative
nonnegative norm `norm : R → 𝕜`, where `𝕜` is a linear ordered field, and the open balls
`{ x | norm x < ε }`, `ε > 0`, form a basis of neighborhoods of zero, then `R` is a topological
ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant418257260e3af1171a3836775f684d8a18d4a85bd04e71ac27bc2f3e437fc568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant418257260e3af1171a3836775f684d8a18d4a85bd04e71ac27bc2f3e437fc568.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca0fea7479daa4499bca019661f97d2f341fb713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
