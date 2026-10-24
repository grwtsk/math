# dpow'_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:385b9589-cb08-d48f-dbe0-4daa62a66a52",
  "kind": "lemma",
  "lexical_name": "dpow'_int",
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
  "slug": "dpow-int--c9e73564c18b15effa0a0f5b",
  "source": {
    "blob": "cc8982dc6fb9ddaf2ef5a40c5c1a87c2c2d8f7f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 122,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9e73564c18b15effa0a0f5b5aa9125a3f3665819729ec8ceaef555d178c0e09",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:385b9589-cb08-d48f-dbe0-4daa62a66a52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma dpow'_int (n : ℕ) {x : ℤ_[p]} (hx : x ∈ Ideal.span {(p : ℤ_[p])}) :
    ‖dpow' p n x‖ ≤ 1 := by
  unfold dpow'
  by_cases hn : n = 0
  · simp [hn]
  · apply le_trans (dpow'_norm_le_of_ne_zero p hn hx)
    rw [← zpow_neg_one, ← zpow_zero ↑p]
    gcongr
    · exact_mod_cast Nat.Prime.one_le hp.elim
    · norm_num

set_option backward.privateInPublic true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Padic/Variant078842697d313c3be4b5062e2c9d9fd8b5008cf2b8caa41391d4b8602bb8ab4c.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc8982dc6fb9ddaf2ef5a40c5c1a87c2c2d8f7f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
