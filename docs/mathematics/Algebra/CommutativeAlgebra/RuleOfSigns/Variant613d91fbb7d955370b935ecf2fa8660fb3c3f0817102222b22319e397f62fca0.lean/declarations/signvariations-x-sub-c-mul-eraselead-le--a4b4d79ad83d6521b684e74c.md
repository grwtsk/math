# signVariations_X_sub_C_mul_eraseLead_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0968744e-1d14-e4af-3e53-604eb4f1e808",
  "kind": "lemma",
  "lexical_name": "signVariations_X_sub_C_mul_eraseLead_le",
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
  "slug": "signvariations-x-sub-c-mul-eraselead-le--a4b4d79ad83d6521b684e74c",
  "source": {
    "blob": "fd5eb56e5b08d69344886f293b8780cd7182fcc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 254,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4b4d79ad83d6521b684e74c4c0d3d9fc1288bee989df7168de5150517d9e4a5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0968744e-1d14-e4af-3e53-604eb4f1e808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma signVariations_X_sub_C_mul_eraseLead_le (h : 0 < P.leadingCoeff) (h₂ : 0 < P.nextCoeff) :
    signVariations ((X - C η) * P.eraseLead) ≤ signVariations ((X - C η) * P) := by
  obtain ⟨c₀, cs, ⟨hcs, hecs⟩⟩ := exists_cons_of_leadingCoeff_pos η h h₂.ne'
  simp +decide only [hcs, hecs, h, h₂, signVariations, List.signVariations, List.destutter,
    List.map_cons, sign_pos, List.filter_cons_of_pos, tsub_le_iff_right,
    Nat.sub_add_cancel (List.length_pos_of_ne_nil (List.destutter'_ne_nil _ _))]
  rw [List.filter_cons]
  split; swap --does c₀ = 0? If so, the trailing nonzero coefficient lists are identical.
  · rfl
  rw [List.destutter'_cons]
  split; swap --does SignType.sign c₀ = 1? If so, the destutter doesn't care about it.
  · rfl
  rcases hcs : (cs.map SignType.sign).filter fun x ↦ decide (x ≠ 0) with _ | ⟨r, rs⟩
  · simp
  · rw [← List.destutter_cons', ← List.destutter_cons']
    grind [List.destutter_cons_cons]

/-- Multiplying a polynomial by a linear term `X - η` adds at least one sign change. This is the
basis for the induction in `roots_countP_pos_le_signVariations`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RuleOfSigns/Variant613d91fbb7d955370b935ecf2fa8660fb3c3f0817102222b22319e397f62fca0.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd5eb56e5b08d69344886f293b8780cd7182fcc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
