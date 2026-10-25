# eq_divAtPrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50536b9d-ea9e-143e-e1b4-5f68fa3ac5d9",
  "kind": "theorem",
  "lexical_name": "eq_divAtPrec",
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
  "slug": "eq-divatprec--aa2db48e38334621982a0e7e",
  "source": {
    "blob": "5063980ee575a982d365bb2764eaeab15c3e1706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa2db48e38334621982a0e7ea7c10c62c000a1b02835f8cfbc1cf43c62d400f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50536b9d-ea9e-143e-e1b4-5f68fa3ac5d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_divAtPrec {a b : Dyadic} (hb : 0 < b) {prec : Int} {y : Dyadic}
    (hp : y.precision ≤ some prec) (h1 : y * b ≤ a)
    (h2 : a < (y + ofIntWithPrec 1 prec) * b) :
    y = divAtPrec a b prec := by
  have hbr : (0 : Rat) < b.toRat := by rwa [← toRat_lt_toRat_iff, toRat_zero] at hb
  have hbne : b.toRat ≠ 0 := Rat.ne_of_gt hbr
  rw [← toRat_le_toRat_iff, toRat_mul] at h1
  rw [← toRat_lt_toRat_iff, toRat_mul, toRat_add, toRat_ofIntWithPrec_eq_mul_two_pow,
      Rat.intCast_one, Rat.one_mul] at h2
  have hdiv_mul : a.toRat / b.toRat * b.toRat = a.toRat := Rat.div_mul_cancel hbne
  have hyle : y.toRat ≤ a.toRat / b.toRat :=
    Rat.le_of_mul_le_mul_right
      (calc y.toRat * b.toRat
          ≤ a.toRat := h1
        _ = a.toRat / b.toRat * b.toRat := hdiv_mul.symm) hbr
  have hltdiv : a.toRat / b.toRat < y.toRat + (2 : Rat) ^ (-prec) :=
    Rat.lt_of_mul_lt_mul_right
      (calc a.toRat / b.toRat * b.toRat
          = a.toRat := hdiv_mul
        _ < (y.toRat + (2 : Rat) ^ (-prec)) * b.toRat := h2) (Rat.le_of_lt hbr)
  have hdiv : divAtPrec a b prec = (a.toRat / b.toRat).toDyadic prec := by
    unfold divAtPrec
    cases b with
    | zero => contradiction
    | ofOdd n k hn => rfl
  rw [hdiv]
  exact eq_toDyadic_of_precision_le hp hyle hltdiv

/-- For a positive dyadic `x`, `invAtPrec x prec * x ≤ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5063980ee575a982d365bb2764eaeab15c3e1706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
