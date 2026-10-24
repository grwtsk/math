# CuspForm.copy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:099e5adf46d10ce768f7b2de8b011d7e6f3d7cf47f4d9f1ed7a7a88d44ad34e9",
  "kind": "def",
  "lexical_name": "CuspForm.copy",
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
  "slug": "cuspform-copy--2d159fc772546ee918140ad0",
  "source": {
    "blob": "281ac863f6762ca846eae0ab571d078a9bec9914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 184,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d159fc772546ee918140ad077c6ce4eb39701217b9b9a4d69c03b054bcf3846",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:099e5adf46d10ce768f7b2de8b011d7e6f3d7cf47f4d9f1ed7a7a88d44ad34e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def CuspForm.copy {Γ' : Subgroup (GL (Fin 2) ℝ)} (f : CuspForm Γ k) (f' : ℍ → ℂ)
    (h : f' = ⇑f) (hΓ : Γ' = Γ := by rfl) : CuspForm Γ' k where
  toFun := f'
  slash_action_eq' A hA := h.symm ▸ f.slash_action_eq' A (hΓ ▸ hA)
  holo' := h.symm ▸ f.holo'
  zero_at_cusps' hc := h.symm ▸ f.zero_at_cusps' (hΓ ▸ hc)

end ModularForm

namespace ModularForm

open SlashInvariantForm

variable {Γ : Subgroup (GL (Fin 2) ℝ)} {k : ℤ}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Basic/Variant94f325af9af5916bf5494b985d7366bd9aee4673e621a44a36be3b088416ff89.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `281ac863f6762ca846eae0ab571d078a9bec9914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
