# eq_or_eq_neg_of_xRep_eq_xRep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a2bbe30-f3eb-cabd-c1fe-cb410b07711a",
  "kind": "lemma",
  "lexical_name": "eq_or_eq_neg_of_xRep_eq_xRep",
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
  "slug": "eq-or-eq-neg-of-xrep-eq-xrep--2e66c2fb4ee8b6ae03d5f31e",
  "source": {
    "blob": "cf272ceb489303c0678628e8176ba9c2f5174357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 925,
    "line": 917,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e66c2fb4ee8b6ae03d5f31e55fad0afe3f6831404c4780a7460224a20e01faf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a2bbe30-f3eb-cabd-c1fe-cb410b07711a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–925.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_or_eq_neg_of_xRep_eq_xRep {P Q : W.Point} (h : P.xRep = Q.xRep) : P = Q ∨ P = -Q := by
  match P, Q with
  | 0, 0 => exact .inl rfl
  | 0, some .. => simp [xRep] at h
  | some .., 0 => simp [xRep] at h
  | some x₁ .., some x₂ .. =>
    simp only [xRep, Matrix.vecCons_inj, and_true] at h
    exact X_eq_iff.mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf272ceb489303c0678628e8176ba9c2f5174357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
