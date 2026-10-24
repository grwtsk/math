# translateGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5c4cc970005d34189e636fd67a677b3ca51c75f5f84ff05f77ed719d34e325a",
  "kind": "def",
  "lexical_name": "translateGL",
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
  "slug": "translategl--57f4958955c2508ac8d3cdcd",
  "source": {
    "blob": "10cf5fa9422dede880bb45a3f6dd224876649ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 228,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57f4958955c2508ac8d3cdcd94a24b1f854ce4da1c46d2e2f4ee87e11c5e1a73",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5c4cc970005d34189e636fd67a677b3ca51c75f5f84ff05f77ed719d34e325a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def translateGL [SlashInvariantFormClass F Γ k] (f : F) (g : GL (Fin 2) ℝ) :
    SlashInvariantForm (CongruenceSubgroup.conjGL Γ g) k where
  toFun := f ∣[k] g
  slash_action_eq' j hj := by
    obtain ⟨y, hy, hy'⟩ := CongruenceSubgroup.mem_conjGL'.mp hj
    simp only [ModularForm.SL_slash, ← hy', ← SlashAction.slash_mul, mul_assoc,
      mul_inv_cancel_left]
    rw [SlashAction.slash_mul, ← ModularForm.SL_slash,
      SlashInvariantFormClass.slash_action_eq f _ hy]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10cf5fa9422dede880bb45a3f6dd224876649ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
