# mlieBracketWithin_smul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "995e2d739cbbbbf39ec67edad8cee2ecb7e16d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:920915cf-50cb-14d9-04d8-3bba317794df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:57641f6e-cf1c-2e9c-b795-d07e047f8a06",
  "kind": "lemma",
  "lexical_name": "mlieBracketWithin_smul_right",
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
  "slug": "mliebracketwithin-smul-right--931b9ea42e76ca6d8b48df3f",
  "source": {
    "blob": "995e2d739cbbbbf39ec67edad8cee2ecb7e16d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 357,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:931b9ea42e76ca6d8b48df3f9d1095b235c4379946b0d7f0ec18817f4c9f4f09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57641f6e-cf1c-2e9c-b795-d07e047f8a06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mlieBracketWithin_smul_right {f : M → 𝕜} (hf : MDiffAt[s] f x)
    (hW : MDiffAt[s] (fun x ↦ (W x : TangentBundle I M)) x)
    (hs : UniqueMDiffAt[s] x) :
    mlieBracketWithin I V (f • W) s x =
      d[s] f x (V x) • (W x) + (f x) • mlieBracketWithin I V W s x := by
  simp only [mlieBracketWithin, mpullbackWithin_smul]
  -- Simplify local notation a bit.
  set V' := mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm V (range I)
  set W' := mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm W (range I)
  set f' := f ∘ (extChartAt I x).symm
  set s' := (extChartAt I x).symm ⁻¹' s ∩ range I
  -- We begin by rewriting using `lieBracketWithin_smul_right`.
  -- We need the coercion since on the nose `B` is a map `E → E`,
  -- whereas we need a map between tangent spaces.
  let A (x₀) := (fderivWithin 𝕜 f' s' x₀) (V' x₀) • W' x₀
  let B (x₀) : TangentSpace 𝓘(𝕜, E) x₀ := f' x₀ • lieBracketWithin 𝕜 V' W' s' x₀
  trans mpullback I 𝓘(𝕜, E) ((extChartAt I x)) (fun y ↦ A y + B y) x
  · simp only [mpullback_apply]
    congr
    exact lieBracketWithin_smul_right (V := V') hf.differentiableWithinAt_comp_extChartAt_symm
      hW.differentiableWithinAt_mpullbackWithin_vectorField hs
  -- We prove the equality of each summand separately.
  rw [← Pi.add_def, mpullback_add_apply]; congr
  · simpa only [A] using! mpullback_mfderivWithin_apply_smul hf
  · simp [B, ← Pi.smul_def', mpullback_smul (V := lieBracketWithin 𝕜 V' W' s'), f']

/--
Product rule for Lie brackets: given two vector fields `V` and `W` on `M` and a function
`f : M → 𝕜`, we have `[V, f • W] = (df V) • W + f • [V, W]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variante40329a51c3c29d05d91764934644428f509923c1707a421182b707b58e64e9a.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `995e2d739cbbbbf39ec67edad8cee2ecb7e16d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
