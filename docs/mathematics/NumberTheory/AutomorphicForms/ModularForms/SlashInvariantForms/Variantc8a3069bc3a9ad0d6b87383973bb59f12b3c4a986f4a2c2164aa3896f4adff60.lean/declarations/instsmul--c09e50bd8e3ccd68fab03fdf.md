# instSMulℝ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b731718782bbbab50ee23a4b84a45d221168cc16423a446a406a67bb720e99f",
  "kind": "instance",
  "lexical_name": "instSMulℝ",
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
  "slug": "instsmul--c09e50bd8e3ccd68fab03fdf",
  "source": {
    "blob": "5a1f1f8254bbc697028f3b348b53dcc23faa8be6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 163,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c09e50bd8e3ccd68fab03fdf93502f14ff071524c6bf342fec506899ae23fedc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b731718782bbbab50ee23a4b84a45d221168cc16423a446a406a67bb720e99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulℝ : SMul α (SlashInvariantForm Γ k) where
  smul c f :=
  { toFun := c • ↑f
    slash_action_eq' γ hγ := by
      rw [← smul_one_smul ℝ, ← smul_one_smul ℂ, smul_slash,
        Complex.real_smul, mul_one, σ_ofReal, slash_action_eqn _ _ hγ] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1f1f8254bbc697028f3b348b53dcc23faa8be6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
