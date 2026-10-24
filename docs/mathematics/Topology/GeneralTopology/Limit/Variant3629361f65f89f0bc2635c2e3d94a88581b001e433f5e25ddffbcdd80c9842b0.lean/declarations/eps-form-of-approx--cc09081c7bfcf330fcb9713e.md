# eps_form_of_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6013bdd232f102af31e856f1e0116e42e3ff01b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a674594a-c24a-135e-c498-6fe265e5d671",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2c860260-5b13-9517-357e-054e04e773ac",
  "kind": "theorem",
  "lexical_name": "eps_form_of_approx",
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
  "slug": "eps-form-of-approx--cc09081c7bfcf330fcb9713e",
  "source": {
    "blob": "6013bdd232f102af31e856f1e0116e42e3ff01b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 73,
    "path": "GRWTSK/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc09081c7bfcf330fcb9713ef3176787ab19ad3a193599cdb2ea9d83ac0646cb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c860260-5b13-9517-357e-054e04e773ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eps_form_of_approx {g : ℝ → ℝ} {N lower : ℝ → ℝ}
    (hg : ∀ δ : ℝ, 0 < δ → ∃ lam : ℝ, 1/2 ≤ lam ∧ lam < 1 ∧ g 1 - δ ≤ g lam)
    (hN : ∀ T, 0 ≤ N T)
    (h : ∀ lam : ℝ, 1/2 ≤ lam → lam < 1 →
      ∀ ε > 0, ∃ T₀, ∀ T ≥ T₀, (g lam - ε) * N T ≤ lower T) :
    ∀ ε > 0, ∃ T₀, ∀ T ≥ T₀, (g 1 - ε) * N T ≤ lower T := by
  intro ε hε
  obtain ⟨lam, hl1, hl2, hg'⟩ := hg (ε/2) (by linarith)
  obtain ⟨T₀, hT₀⟩ := h lam hl1 hl2 (ε/2) (by linarith)
  refine ⟨T₀, fun T hT => ?_⟩
  have h1 := hT₀ T hT
  have hmul : (g 1 - ε) * N T ≤ (g lam - ε/2) * N T := by
    apply mul_le_mul_of_nonneg_right _ (hN T)
    linarith
  linarith

/-- left-approximation at 1 from continuity within [0,1]: the `hg` hypothesis of `eps_form_of_approx`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Limit/Variant3629361f65f89f0bc2635c2e3d94a88581b001e433f5e25ddffbcdd80c9842b0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6013bdd232f102af31e856f1e0116e42e3ff01b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
