# psiRelativeError_medium_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "722e843c1ac1f8457adce3afab7062041f59c067",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e44bb1c6d13a9b6d189a61dfbed88f6fb0cca1633408e56d5ff66e65aaadeb2f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f9bb095b-17c9-6473-9be9-f5a86d197497",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55e99efc-a031-b7f7-e47e-e8a91e6e0443",
  "kind": "theorem",
  "lexical_name": "psiRelativeError_medium_bound",
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
  "slug": "psirelativeerror-medium-bound--bc67c06d90726f544df8d5c6",
  "source": {
    "blob": "722e843c1ac1f8457adce3afab7062041f59c067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 19,
    "path": "GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variante44bb1c6d13a9b6d189a61dfbed88f6fb0cca1633408e56d5ff66e65aaadeb2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc67c06d90726f544df8d5c63401df8d0f6db4078580457d02d910a09f2405b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variante44bb1c6d13a9b6d189a61dfbed88f6fb0cca1633408e56d5ff66e65aaadeb2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55e99efc-a031-b7f7-e47e-e8a91e6e0443`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiRelativeError_medium_bound :
    ∃ c : ℝ, 0 < c ∧ ∃ C : ℝ, 0 < C ∧
      ∀ᶠ t : ℝ in atTop,
        |psiRelativeError t| ≤ C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hp⟩ := MediumPNT
  obtain ⟨C, hC, hbound⟩ := hp.exists_pos
  refine ⟨c, hc, C, hC, ?_⟩
  have hh := hbound.bound.comp_tendsto Real.tendsto_exp_atTop
  filter_upwards [hh] with t ht
  simp only [Pi.sub_apply, id_eq, Real.norm_eq_abs, Real.log_exp,
    abs_mul, abs_of_pos (Real.exp_pos _)] at ht
  rw [psiRelativeError_eq, abs_mul, abs_of_pos (Real.exp_pos _)]
  have hmul := mul_le_mul_of_nonneg_left ht (Real.exp_pos (-t)).le
  have he : Real.exp (-t) * (C * (Real.exp t * Real.exp (-c * t ^ ((1 : ℝ) / 10)))) =
      C * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by
    calc
      _ = C * (Real.exp (-t) * Real.exp t) * Real.exp (-c * t ^ ((1 : ℝ) / 10)) := by ring
      _ = _ := by rw [←Real.exp_add]; simp
  exact he ▸ hmul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variante44bb1c6d13a9b6d189a61dfbed88f6fb0cca1633408e56d5ff66e65aaadeb2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MediumPNTLogErrorAttempt01/Variante44bb1c6d13a9b6d189a61dfbed88f6fb0cca1633408e56d5ff66e65aaadeb2f.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `722e843c1ac1f8457adce3afab7062041f59c067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
