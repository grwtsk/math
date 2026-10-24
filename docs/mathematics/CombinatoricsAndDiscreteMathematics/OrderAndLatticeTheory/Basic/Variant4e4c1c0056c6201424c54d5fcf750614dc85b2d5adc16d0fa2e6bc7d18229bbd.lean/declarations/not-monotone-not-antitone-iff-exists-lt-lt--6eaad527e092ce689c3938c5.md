# not_monotone_not_antitone_iff_exists_lt_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8994b6b6-956f-fd3a-e08f-44323451284d",
  "kind": "lemma",
  "lexical_name": "not_monotone_not_antitone_iff_exists_lt_lt",
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
  "slug": "not-monotone-not-antitone-iff-exists-lt-lt--6eaad527e092ce689c3938c5",
  "source": {
    "blob": "9f64c6258c0c3d59ca5468040f9fa5be2d1b1568",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 482,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6eaad527e092ce689c3938c578dd0f423474ea31a3ccb74c1ec7e51094a3e4ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8994b6b6-956f-fd3a-e08f-44323451284d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_monotone_not_antitone_iff_exists_lt_lt :
    ¬ Monotone f ∧ ¬ Antitone f ↔ ∃ a b c, a < b ∧ b < c ∧
    (f a < f b ∧ f c < f b ∨ f b < f a ∧ f b < f c) := by
  simp_rw [not_monotone_not_antitone_iff_exists_le_le, ← and_assoc]
  refine exists₃_congr (fun a b c ↦ and_congr_left <|
    fun h ↦ (Ne.le_iff_lt ?_).and <| Ne.le_iff_lt ?_) <;>
  (rintro rfl; simp at h)

/-!
### Strictly monotone functions and `cmp`
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant4e4c1c0056c6201424c54d5fcf750614dc85b2d5adc16d0fa2e6bc7d18229bbd.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f64c6258c0c3d59ca5468040f9fa5be2d1b1568` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
