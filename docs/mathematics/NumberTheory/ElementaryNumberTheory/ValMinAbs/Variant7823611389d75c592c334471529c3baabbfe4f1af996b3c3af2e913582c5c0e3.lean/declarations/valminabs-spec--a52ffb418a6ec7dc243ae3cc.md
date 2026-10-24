# valMinAbs_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeb9b3c5-447b-208b-fd8a-e3266b030a12",
  "kind": "lemma",
  "lexical_name": "valMinAbs_spec",
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
  "slug": "valminabs-spec--a52ffb418a6ec7dc243ae3cc",
  "source": {
    "blob": "5c952edfa6dfceb27dc25beb363cde67b17ec328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 86,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a52ffb418a6ec7dc243ae3cc0324dffe5450c28de753923564448c3b0c9b89c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeb9b3c5-447b-208b-fd8a-e3266b030a12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma valMinAbs_spec [NeZero n] (x : ZMod n) (y : ℤ) :
    x.valMinAbs = y ↔ x = y ∧ y * 2 ∈ Set.Ioc (-n : ℤ) n where
  mp := by rintro rfl; exact ⟨x.coe_valMinAbs.symm, x.valMinAbs_mem_Ioc⟩
  mpr h := by
    rw [← sub_eq_zero]
    apply @Int.eq_zero_of_abs_lt_dvd n
    · rw [← intCast_zmod_eq_zero_iff_dvd, Int.cast_sub, coe_valMinAbs, h.1, sub_self]
    rw [← mul_lt_mul_iff_left₀ (@zero_lt_two ℤ _ _ _ _ _)]
    nth_rw 1 [← abs_eq_self.2 (@zero_le_two ℤ _ _ _ _)]
    rw [← abs_mul, sub_mul, abs_lt]
    constructor <;> linarith only [x.valMinAbs_mem_Ioc.1, x.valMinAbs_mem_Ioc.2, h.2.1, h.2.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant7823611389d75c592c334471529c3baabbfe4f1af996b3c3af2e913582c5c0e3.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c952edfa6dfceb27dc25beb363cde67b17ec328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
