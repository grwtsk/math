# instNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7436b6a8d352844f5a68aa092cbb932938b1b9fe9df7a1bf16151f90f640f617",
  "kind": "instance",
  "lexical_name": "instNeg",
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
  "slug": "instneg--5f75d2cf222c34ac65fab77c",
  "source": {
    "blob": "10cf5fa9422dede880bb45a3f6dd224876649ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 146,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f75d2cf222c34ac65fab77cdad80c19bfe09fa25a30336bc5aa2ac1d05a8087",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7436b6a8d352844f5a68aa092cbb932938b1b9fe9df7a1bf16151f90f640f617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNeg : Neg (SlashInvariantForm Γ k) :=
  ⟨fun f =>
    { toFun := -f
      slash_action_eq' := fun γ hγ => by rw [SlashAction.neg_slash, slash_action_eqn f γ hγ] }⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10cf5fa9422dede880bb45a3f6dd224876649ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
