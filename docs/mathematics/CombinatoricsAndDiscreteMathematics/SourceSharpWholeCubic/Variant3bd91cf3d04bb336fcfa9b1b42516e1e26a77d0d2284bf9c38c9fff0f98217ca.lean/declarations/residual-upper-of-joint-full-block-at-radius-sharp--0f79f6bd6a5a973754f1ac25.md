# residual_upper_of_joint_full_block_at_radius_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5c395f9-9717-e731-3bd5-8bf74ace61e7",
  "kind": "theorem",
  "lexical_name": "residual_upper_of_joint_full_block_at_radius_sharp",
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
  "slug": "residual-upper-of-joint-full-block-at-radius-sharp--0f79f6bd6a5a973754f1ac25",
  "source": {
    "blob": "6d88c354905a424b0c939e2ebc2c759415adbcc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant3bd91cf3d04bb336fcfa9b1b42516e1e26a77d0d2284bf9c38c9fff0f98217ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f79f6bd6a5a973754f1ac25eaaec76546a125f43ca3a72f1895adcc4fe76213",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant3bd91cf3d04bb336fcfa9b1b42516e1e26a77d0d2284bf9c38c9fff0f98217ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5c395f9-9717-e731-3bd5-8bf74ace61e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_upper_of_joint_full_block_at_radius_sharp (Q A D : ℝ) (hQ : 91 ≤ Q)
    (hQA : Q ≤ A)
    (hjoint : (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
      wholeCubicMainTerm A (d : ℝ)) + literalOmegaComplementarySector A ≤ D) :
    mertensResidual A ≤ D + 64320 / Q ^ 3 := by
  have hQ0 : 0 < Q := by linarith
  have hp : Q ^ 3 ≤ A ^ 3 := pow_le_pow_left₀ hQ0.le hQA 3
  have he : (64320 : ℝ) / A ^ 3 ≤ 64320 / Q ^ 3 :=
    div_le_div_of_nonneg_left (by norm_num) (pow_pos hQ0 3) hp
  exact (residual_upper_of_joint_full_block_sharp A D (hQ.trans hQA) hjoint).trans
    (by linarith only [he])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant3bd91cf3d04bb336fcfa9b1b42516e1e26a77d0d2284bf9c38c9fff0f98217ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSharpWholeCubic/Variant3bd91cf3d04bb336fcfa9b1b42516e1e26a77d0d2284bf9c38c9fff0f98217ca.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d88c354905a424b0c939e2ebc2c759415adbcc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
