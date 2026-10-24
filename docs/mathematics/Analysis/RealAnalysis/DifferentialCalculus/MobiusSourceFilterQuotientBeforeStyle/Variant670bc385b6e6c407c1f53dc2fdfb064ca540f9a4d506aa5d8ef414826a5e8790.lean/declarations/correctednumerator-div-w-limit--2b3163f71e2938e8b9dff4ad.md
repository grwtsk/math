# correctedNumerator_div_W_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10f7acd48b96692eded900568df402ee4140a59b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb1960a3-4e5b-e5b4-86fd-c61dda0ca237",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08145c5c-44c9-c653-b818-efc9b3f9193e",
  "kind": "theorem",
  "lexical_name": "correctedNumerator_div_W_limit",
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
  "slug": "correctednumerator-div-w-limit--2b3163f71e2938e8b9dff4ad",
  "source": {
    "blob": "10f7acd48b96692eded900568df402ee4140a59b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b3163f71e2938e8b9dff4adfb765b2b9159b461e254259d0c21244d100b88ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08145c5c-44c9-c653-b818-efc9b3f9193e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedNumerator_div_W_limit (X : ℕ) (hX : 1 ≤ X) :
    Tendsto (fun z : ℂ => correctedNumerator X z / W z) (𝓝[≠] (1 / 2))
      (𝓝 ((logNormalization X : ℂ) / deriv W (1 / 2))) := by
  have h := (correctedQuotient_tendsto_half X hX).div W_removed_half_limit
    W_deriv_half_ne_zero
  apply h.congr'
  filter_upwards [self_mem_nhdsWithin] with z hz
  exact div_div_div_cancel_right₀ (sub_ne_zero.mpr hz) _ _

end
end FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusSourceFilterQuotientBeforeStyle/Variant670bc385b6e6c407c1f53dc2fdfb064ca540f9a4d506aa5d8ef414826a5e8790.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10f7acd48b96692eded900568df402ee4140a59b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
