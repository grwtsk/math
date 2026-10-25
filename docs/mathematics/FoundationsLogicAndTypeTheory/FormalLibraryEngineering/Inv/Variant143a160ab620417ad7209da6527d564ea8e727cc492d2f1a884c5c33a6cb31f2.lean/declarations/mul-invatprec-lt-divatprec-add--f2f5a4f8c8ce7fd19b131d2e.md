# mul_invAtPrec_lt_divAtPrec_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63a504e8-f6b6-d4a1-49c7-7171c57055ff",
  "kind": "theorem",
  "lexical_name": "mul_invAtPrec_lt_divAtPrec_add",
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
  "slug": "mul-invatprec-lt-divatprec-add--f2f5a4f8c8ce7fd19b131d2e",
  "source": {
    "blob": "5063980ee575a982d365bb2764eaeab15c3e1706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f5a4f8c8ce7fd19b131d2ebd041f13b52b1933fd05df8da4ebe03a7b3b7e8e",
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

Occurrence: `result:63a504e8-f6b6-d4a1-49c7-7171c57055ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_invAtPrec_lt_divAtPrec_add {a b : Dyadic} (ha : 0 ≤ a) (hb : 0 < b) (prec : Int) :
    a * invAtPrec b prec < divAtPrec a b prec + ofIntWithPrec 1 prec := by
  have hbr : (0 : Rat) < b.toRat := by rwa [← toRat_lt_toRat_iff, toRat_zero] at hb
  have har : (0 : Rat) ≤ a.toRat := by rwa [← toRat_le_toRat_iff, toRat_zero] at ha
  rw [← toRat_lt_toRat_iff, toRat_mul]
  unfold invAtPrec divAtPrec
  cases b with
  | zero => exfalso; contradiction
  | ofOdd n k hn =>
    simp only
    have h_le : a.toRat * ((ofOdd n k hn).toRat.inv.toDyadic prec).toRat
              ≤ a.toRat / (ofOdd n k hn).toRat := by
      rw [Rat.div_def]
      exact Rat.mul_le_mul_of_nonneg_left Rat.toRat_toDyadic_le har
    exact Rat.not_le.mp fun h =>
      Rat.not_le.mpr Rat.lt_toRat_toDyadic_add (Rat.le_trans h h_le)

/--
For positive `a` and `b`, `divAtPrec a b prec` exceeds `a * invAtPrec b prec` by less than
`a * 2 ^ (-prec)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5063980ee575a982d365bb2764eaeab15c3e1706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
