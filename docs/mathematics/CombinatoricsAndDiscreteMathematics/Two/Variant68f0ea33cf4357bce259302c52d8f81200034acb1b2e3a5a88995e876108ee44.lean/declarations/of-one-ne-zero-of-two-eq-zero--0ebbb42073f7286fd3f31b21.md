# of_one_ne_zero_of_two_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "37d8993e2495ac97a85bf3e25f1a6eeef623ca9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68f0ea33cf4357bce259302c52d8f81200034acb1b2e3a5a88995e876108ee44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8950ff10-24d1-bd54-9bbd-5a59de46259e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:291a1300-7946-06b1-50ef-be343e5e2dfc",
  "kind": "theorem",
  "lexical_name": "of_one_ne_zero_of_two_eq_zero",
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
  "slug": "of-one-ne-zero-of-two-eq-zero--0ebbb42073f7286fd3f31b21",
  "source": {
    "blob": "37d8993e2495ac97a85bf3e25f1a6eeef623ca9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Two/Variant68f0ea33cf4357bce259302c52d8f81200034acb1b2e3a5a88995e876108ee44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ebbb42073f7286fd3f31b21efb0a6dc65272352f999e6116196bf79ed849bb3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Two/Variant68f0ea33cf4357bce259302c52d8f81200034acb1b2e3a5a88995e876108ee44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:291a1300-7946-06b1-50ef-be343e5e2dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_one_ne_zero_of_two_eq_zero (h₁ : (1 : R) ≠ 0) (h₂ : (2 : R) = 0) : CharP R 2 where
  cast_eq_zero_iff n := by
    obtain hn | hn := Nat.even_or_odd n
    · simp_rw [hn.two_dvd, iff_true]
      exact natCast_eq_zero_of_even_of_two_eq_zero hn h₂
    · simp_rw [hn.not_two_dvd_nat, iff_false]
      rwa [natCast_eq_one_of_odd_of_two_eq_zero hn h₂]

variable [CharP R 2]

@[scoped simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Two/Variant68f0ea33cf4357bce259302c52d8f81200034acb1b2e3a5a88995e876108ee44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Two/Variant68f0ea33cf4357bce259302c52d8f81200034acb1b2e3a5a88995e876108ee44.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37d8993e2495ac97a85bf3e25f1a6eeef623ca9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
