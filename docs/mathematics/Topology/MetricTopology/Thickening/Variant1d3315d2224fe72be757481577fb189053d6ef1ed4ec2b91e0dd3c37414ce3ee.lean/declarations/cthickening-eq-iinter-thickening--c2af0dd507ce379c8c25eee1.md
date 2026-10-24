# cthickening_eq_iInter_thickening'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9a9222eff1becde505c2464191589eb0d49ef91",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 464,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29d954de-44a6-d263-98b3-c29a8d191789",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c5e60ea-bbb6-0386-ba33-386867246a72",
  "kind": "theorem",
  "lexical_name": "cthickening_eq_iInter_thickening'",
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
  "slug": "cthickening-eq-iinter-thickening--c2af0dd507ce379c8c25eee1",
  "source": {
    "blob": "a9a9222eff1becde505c2464191589eb0d49ef91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 464,
    "path": "GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2af0dd507ce379c8c25eee1f18a2dc7e82caec7f3efb66de09a251ecad54c65",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5e60ea-bbb6-0386-ba33-386867246a72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cthickening_eq_iInter_thickening' {δ : ℝ} (δ_nn : 0 ≤ δ) (s : Set ℝ) (hsδ : s ⊆ Ioi δ)
    (hs : ∀ ε, δ < ε → (s ∩ Ioc δ ε).Nonempty) (E : Set α) :
    cthickening δ E = ⋂ ε ∈ s, thickening ε E := by
  refine (subset_iInter₂ fun ε hε => ?_).antisymm ?_
  · obtain ⟨ε', -, hε'⟩ := hs ε (hsδ hε)
    have ss := cthickening_subset_thickening' (lt_of_le_of_lt δ_nn hε'.1) hε'.1 E
    exact ss.trans (thickening_mono hε'.2 E)
  · rw [cthickening_eq_iInter_cthickening' s hsδ hs E]
    exact iInter₂_mono fun ε _ => thickening_subset_cthickening ε E

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Thickening/Variant1d3315d2224fe72be757481577fb189053d6ef1ed4ec2b91e0dd3c37414ce3ee.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9a9222eff1becde505c2464191589eb0d49ef91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
