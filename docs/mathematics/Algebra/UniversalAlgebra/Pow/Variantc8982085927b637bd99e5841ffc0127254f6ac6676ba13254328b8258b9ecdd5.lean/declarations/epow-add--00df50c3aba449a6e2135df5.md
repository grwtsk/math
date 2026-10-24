# epow_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90114444-73be-1432-a318-94e3eeea0341",
  "kind": "lemma",
  "lexical_name": "epow_add",
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
  "slug": "epow-add--00df50c3aba449a6e2135df5",
  "source": {
    "blob": "cf0badb02a23a1a5e55b720fbd933e1b29b5a2e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00df50c3aba449a6e2135df50c38aeff976fe681e889dfec67fbdcb7be872c10",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90114444-73be-1432-a318-94e3eeea0341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epow_add : x ^ (y + z) = x ^ y * x ^ z := by
  rcases lt_trichotomy x 1 with x_0 | rfl | x_2
  · rw [Order.lt_one_iff.1 x_0]
    rcases eq_zero_or_pos y with rfl | y_0
    · simp only [zero_add, epow_zero, one_mul]
    · rw [zero_epow y_0.ne.symm, zero_mul]
      exact zero_epow (add_pos_of_pos_of_nonneg y_0 bot_le).ne.symm
  · simp only [one_epow, mul_one]
  · induction y
    · rw [top_add, epow_top x_2, top_mul]
      exact (epow_pos x_2.ne_zero).ne'
    induction z
    · rw [add_top, epow_top x_2, mul_top]
      exact (epow_pos x_2.ne_zero).ne'
    simp only [← Nat.cast_add, epow_natCast, pow_add x]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variantc8982085927b637bd99e5841ffc0127254f6ac6676ba13254328b8258b9ecdd5.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf0badb02a23a1a5e55b720fbd933e1b29b5a2e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
