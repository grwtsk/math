# uncurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5883d1d13cca4be08c41d70bc59b78f0bb2b057",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ac70882-d0fa-59a0-eb0b-3163cc9af6f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6be7c0af-012b-caa4-542b-7815cdcc109e",
  "kind": "theorem",
  "lexical_name": "uncurry",
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
  "slug": "uncurry--0df6737e7643e57aedfd240d",
  "source": {
    "blob": "a5883d1d13cca4be08c41d70bc59b78f0bb2b057",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0df6737e7643e57aedfd240d66ba5986eee42f9429439d18bf3b76981639fd9e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6be7c0af-012b-caa4-542b-7815cdcc109e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem uncurry {f : α → β → γ} {Kα Kβ : ℝ≥0} (hα : ∀ b, LipschitzWith Kα fun a => f a b)
    (hβ : ∀ a, LipschitzWith Kβ (f a)) : LipschitzWith (Kα + Kβ) (Function.uncurry f) := by
  rintro ⟨a₁, b₁⟩ ⟨a₂, b₂⟩
  simp only [Function.uncurry, ENNReal.coe_add, add_mul]
  apply le_trans (edist_triangle _ (f a₂ b₁) _)
  exact
    add_le_add (le_trans (hα _ _ _) <| mul_right_mono <| le_max_left _ _)
      (le_trans (hβ _ _ _) <| mul_right_mono <| le_max_right _ _)

/-- Iterates of a Lipschitz function are Lipschitz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lipschitz/Variant25611eec76f2a5a9312506507c5064bdd826fde11c578658393f17cdac9a0cd6.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5883d1d13cca4be08c41d70bc59b78f0bb2b057` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
