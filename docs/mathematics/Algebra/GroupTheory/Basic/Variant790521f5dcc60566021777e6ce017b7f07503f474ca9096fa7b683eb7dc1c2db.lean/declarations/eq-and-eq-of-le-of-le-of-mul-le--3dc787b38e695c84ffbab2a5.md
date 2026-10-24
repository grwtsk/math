# eq_and_eq_of_le_of_le_of_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f90906bc-6c61-e192-f3ab-cedefc065a57",
  "kind": "theorem",
  "lexical_name": "eq_and_eq_of_le_of_le_of_mul_le",
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
  "slug": "eq-and-eq-of-le-of-le-of-mul-le--3dc787b38e695c84ffbab2a5",
  "source": {
    "blob": "3fdcde028103bf18d89176dcbf3abef10fd925a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dc787b38e695c84ffbab2a5c7885865c20d6e5fa08b628f93ead38bdf57035d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f90906bc-6c61-e192-f3ab-cedefc065a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_and_eq_of_le_of_le_of_mul_le [Mul α] [LinearOrder α]
    [CovariantClass α α (· * ·) (· ≤ ·)] [CovariantClass α α (Function.swap (· * ·)) (· < ·)]
    [ContravariantClass α α (· * ·) (· ≤ ·)] {a b a0 b0 : α} (ha : a0 ≤ a) (hb : b0 ≤ b)
    (ab : a * b ≤ a0 * b0) : a = a0 ∧ b = b0 := by
  haveI := Mul.to_covariantClass_right α
  have ha' : ¬a0 * b0 < a * b → ¬a0 < a := mt (mul_lt_mul_of_lt_of_le · hb)
  have hb' : ¬a0 * b0 < a * b → ¬b0 < b := mt (mul_lt_mul_of_le_of_lt ha ·)
  push_neg at ha' hb'
  exact ⟨ha.antisymm' (ha' ab), hb.antisymm' (hb' ab)⟩
#align eq_and_eq_of_le_of_le_of_mul_le eq_and_eq_of_le_of_le_of_mul_le
#align eq_and_eq_of_le_of_le_of_add_le eq_and_eq_of_le_of_le_of_add_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant790521f5dcc60566021777e6ce017b7f07503f474ca9096fa7b683eb7dc1c2db.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fdcde028103bf18d89176dcbf3abef10fd925a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
