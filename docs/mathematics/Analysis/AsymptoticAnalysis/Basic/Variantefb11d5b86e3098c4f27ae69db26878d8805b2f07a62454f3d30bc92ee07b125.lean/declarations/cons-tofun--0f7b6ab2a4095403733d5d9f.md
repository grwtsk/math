# cons_toFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6bd45e4-b9bc-7171-b494-37c34947be16",
  "kind": "theorem",
  "lexical_name": "cons_toFun",
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
  "slug": "cons-tofun--0f7b6ab2a4095403733d5d9f",
  "source": {
    "blob": "6fb7e38b81e71ee37764dc87843139daa509c4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 397,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f7b6ab2a4095403733d5d9f735def7b79ad43273479c4f2e64c0b78199f3e70",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6bd45e4-b9bc-7171-b494-37c34947be16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 397–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_toFun {coef exp : ℝ} {m : UnitMonomial} {basis_hd : ℝ → ℝ} {basis_tl : Basis} :
    Monomial.toFun ⟨coef, exp :: m⟩ (basis_hd :: basis_tl) =
    basis_hd ^ exp * Monomial.toFun ⟨coef, m⟩ basis_tl := by
  ext x
  simp [toFun]
  ring

/-- If `t.coef = 0`, then `t.toFun` is zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean#L397).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fb7e38b81e71ee37764dc87843139daa509c4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
