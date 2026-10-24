# differentiableAt_cuspFunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "89b4a25870dcedc2776f47194ba9a7324690266a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 131,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c4ab102-dbe4-ebd2-57f0-6deb33ce5303",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d3ef1df-ccf9-9c80-438b-d83c994a3dd3",
  "kind": "theorem",
  "lexical_name": "differentiableAt_cuspFunction",
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
  "slug": "differentiableat-cuspfunction--5cf7839837ccb46bfa323035",
  "source": {
    "blob": "89b4a25870dcedc2776f47194ba9a7324690266a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 131,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cf7839837ccb46bfa3230355cc6c808f889c3bb5e7d053a10beb594e54f781d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d3ef1df-ccf9-9c80-438b-d83c994a3dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_cuspFunction (hh : h ≠ 0) (hf : Periodic f h)
    {z : ℂ} (hol_z : DifferentiableAt ℂ f z) :
    DifferentiableAt ℂ (cuspFunction h f) (𝕢 h z) := by
  let q := 𝕢 h z
  have qdiff : HasStrictDerivAt (𝕢 h) (q * (2 * π * I / h)) z := by
    simpa only [id_eq, mul_one] using (((hasStrictDerivAt_id z).const_mul _).div_const _).cexp
  -- Now show that the q-map has a differentiable local inverse at z, say L : ℂ → ℂ with L q = z.
  have diff_ne : q * (2 * π * I / h) ≠ 0 :=
    mul_ne_zero (exp_ne_zero _) (div_ne_zero two_pi_I_ne_zero <| mod_cast hh)
  let L := (qdiff.localInverse (𝕢 h) _ z) diff_ne
  have diff_L : DifferentiableAt ℂ L q := (qdiff.to_localInverse diff_ne).differentiableAt
  have hL : 𝕢 h ∘ L =ᶠ[𝓝 q] (id : ℂ → ℂ) :=
    (qdiff.hasStrictFDerivAt_equiv diff_ne).eventually_right_inverse
  -- Thus, if F = cuspFunction h f, we have F q' = f (L q') for q' near q.
  -- Since L is differentiable at q, and f is diff'ble at L q [ = z], we conclude
  -- that F is differentiable at q.
  have hF := hL.fun_comp (cuspFunction h f)
  have : cuspFunction h f ∘ 𝕢 h ∘ L = f ∘ L := funext fun z ↦ eq_cuspFunction hh hf (L z)
  rw [this] at hF
  rw [← EventuallyEq.eq_of_nhds (qdiff.hasStrictFDerivAt_equiv diff_ne).eventually_left_inverse]
    at hol_z
  exact (hol_z.comp q diff_L).congr_of_eventuallyEq hF.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Periodic/Variant0438c69c7b0c2830ddb1d1b8d83705af06c933ed9acca19b2ef5375898a59c3d.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b4a25870dcedc2776f47194ba9a7324690266a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
