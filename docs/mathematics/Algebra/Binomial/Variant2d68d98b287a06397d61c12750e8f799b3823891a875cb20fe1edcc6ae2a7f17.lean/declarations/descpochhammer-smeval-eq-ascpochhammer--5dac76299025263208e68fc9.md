# descPochhammer_smeval_eq_ascPochhammer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e35560f-af46-c8f3-fc77-c6e98023b6ec",
  "kind": "theorem",
  "lexical_name": "descPochhammer_smeval_eq_ascPochhammer",
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
  "slug": "descpochhammer-smeval-eq-ascpochhammer--5dac76299025263208e68fc9",
  "source": {
    "blob": "bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dac76299025263208e68fc9a7db4f2a9cfc011e690b18530ff4eb7eb869d5aa",
  "verification": {
    "reference": "docs/verification/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e35560f-af46-c8f3-fc77-c6e98023b6ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descPochhammer_smeval_eq_ascPochhammer (r : R) (n : ℕ) :
    (descPochhammer ℤ n).smeval r = (ascPochhammer ℕ n).smeval (r - n + 1) := by
  induction n with
  | zero => simp only [descPochhammer_zero, ascPochhammer_zero, smeval_one, npow_zero]
  | succ n ih =>
    rw [Nat.cast_succ, sub_add, add_sub_cancel_right, descPochhammer_succ_right, smeval_mul, ih,
      ascPochhammer_succ_left, X_mul, smeval_mul_X, smeval_comp, smeval_sub, ← C_eq_natCast,
      smeval_add, smeval_one, smeval_C]
    simp only [smeval_X, npow_one, npow_zero, zsmul_one, Int.cast_natCast, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variant2d68d98b287a06397d61c12750e8f799b3823891a875cb20fe1edcc6ae2a7f17.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bffdfec1bcb13c7bacf3f0ee595b226145cf0ca7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
