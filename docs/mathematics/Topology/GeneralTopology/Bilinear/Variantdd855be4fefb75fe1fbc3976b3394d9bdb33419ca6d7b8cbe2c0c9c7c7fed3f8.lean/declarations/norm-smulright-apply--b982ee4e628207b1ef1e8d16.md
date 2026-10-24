# norm_smulRight_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "569d3f985165d6ca2ccc475a507b636ba459afdc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f719643-0f98-8ef1-2975-3f4b93ce1619",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84f76723-66e0-c2e9-2898-9ba6ef5f0b1b",
  "kind": "theorem",
  "lexical_name": "norm_smulRight_apply",
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
  "slug": "norm-smulright-apply--b982ee4e628207b1ef1e8d16",
  "source": {
    "blob": "569d3f985165d6ca2ccc475a507b636ba459afdc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 365,
    "path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b982ee4e628207b1ef1e8d1671d2daca2e7edb790b2e8319c47a51eb00f17b30",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84f76723-66e0-c2e9-2898-9ba6ef5f0b1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_smulRight_apply (c : E →L[𝕜] 𝕜) (f : Fₗ) : ‖smulRight c f‖ = ‖c‖ * ‖f‖ := by
  refine le_antisymm ?_ ?_
  · refine opNorm_le_bound _ (by positivity) fun x => ?_
    calc
      ‖c x • f‖ = ‖c x‖ * ‖f‖ := norm_smul _ _
      _ ≤ ‖c‖ * ‖x‖ * ‖f‖ := by gcongr; apply le_opNorm
      _ = ‖c‖ * ‖f‖ * ‖x‖ := by ring
  · obtain hf | hf := (norm_nonneg f).eq_or_gt
    · simp [hf]
    · rw [← le_div_iff₀ hf]
      refine opNorm_le_bound _ (by positivity) fun x => ?_
      rw [div_mul_eq_mul_div, le_div_iff₀ hf]
      calc
        ‖c x‖ * ‖f‖ = ‖c x • f‖ := (norm_smul _ _).symm
        _ = ‖smulRight c f x‖ := rfl
        _ ≤ ‖smulRight c f‖ * ‖x‖ := le_opNorm _ _

/-- The non-negative norm of the tensor product of a scalar linear map and of an element of a normed
space is the product of the non-negative norms. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bilinear/Variantdd855be4fefb75fe1fbc3976b3394d9bdb33419ca6d7b8cbe2c0c9c7c7fed3f8.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569d3f985165d6ca2ccc475a507b636ba459afdc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
