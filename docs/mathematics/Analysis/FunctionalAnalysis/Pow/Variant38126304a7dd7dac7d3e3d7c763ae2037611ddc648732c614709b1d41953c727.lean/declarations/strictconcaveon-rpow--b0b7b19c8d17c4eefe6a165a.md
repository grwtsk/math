# strictConcaveOn_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b05c631bd7793a49e480310fb6972104e9c73b6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5a332859-02e2-5883-fb45-d49852e455aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf8c8820-ea64-69c7-413f-bf2c633a38e0",
  "kind": "lemma",
  "lexical_name": "strictConcaveOn_rpow",
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
  "slug": "strictconcaveon-rpow--b0b7b19c8d17c4eefe6a165a",
  "source": {
    "blob": "b05c631bd7793a49e480310fb6972104e9c73b6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0b7b19c8d17c4eefe6a165a2627f2f894ce1b4a33fe0c3fd5e7f17c59dd72d9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf8c8820-ea64-69c7-413f-bf2c633a38e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma strictConcaveOn_rpow {p : ℝ} (hp₀ : 0 < p) (hp₁ : p < 1) :
    StrictConcaveOn ℝ (Set.Ici 0) fun x : ℝ ↦ x ^ p := by
  refine ⟨convex_Ici _, fun x hx y hy hxy a b ha hb hab => ?_⟩
  let x' : ℝ≥0 := ⟨x, hx⟩
  let y' : ℝ≥0 := ⟨y, hy⟩
  let a' : ℝ≥0 := ⟨a, ha.le⟩
  let b' : ℝ≥0 := ⟨b, hb.le⟩
  have hxy' : x' ≠ y' := Subtype.coe_ne_coe.1 hxy
  have hab' : a' + b' = 1 := by ext; simp [a', b', hab]
  exact_mod_cast (NNReal.strictConcaveOn_rpow hp₀ hp₁).2 (Set.mem_univ x') (Set.mem_univ y')
    hxy' (mod_cast ha) (mod_cast hb) hab'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Pow/Variant38126304a7dd7dac7d3e3d7c763ae2037611ddc648732c614709b1d41953c727.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b05c631bd7793a49e480310fb6972104e9c73b6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
