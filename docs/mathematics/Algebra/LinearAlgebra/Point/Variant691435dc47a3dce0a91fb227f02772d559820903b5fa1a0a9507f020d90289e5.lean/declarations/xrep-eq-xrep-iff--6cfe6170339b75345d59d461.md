# xRep_eq_xRep_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0cae5f0-3e75-9952-2ea1-cc89426e813c",
  "kind": "lemma",
  "lexical_name": "xRep_eq_xRep_iff",
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
  "slug": "xrep-eq-xrep-iff--6cfe6170339b75345d59d461",
  "source": {
    "blob": "cf272ceb489303c0678628e8176ba9c2f5174357",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 932,
    "line": 926,
    "path": "GRWTSK/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cfe6170339b75345d59d461932961f29496ea8ae821186be30fee4a1985c2cb",
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

Occurrence: `result:e0cae5f0-3e75-9952-2ea1-cc89426e813c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 926–932.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma xRep_eq_xRep_iff {P Q : W.Point} : P.xRep = Q.xRep ↔ P = Q ∨ P = -Q := by
  refine ⟨eq_or_eq_neg_of_xRep_eq_xRep, fun H ↦ ?_⟩
  rcases H with rfl | rfl <;> simp

variable [DecidableEq F]

/-- We give an explicit expression for `xRep` of `P + P` when `2*P ≠ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Point/Variant691435dc47a3dce0a91fb227f02772d559820903b5fa1a0a9507f020d90289e5.lean#L926).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf272ceb489303c0678628e8176ba9c2f5174357` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
