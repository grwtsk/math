# invAtPrec_eq_divAtPrec_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f09c0915-d02f-600b-c054-ee73cb0bdb4b",
  "kind": "theorem",
  "lexical_name": "invAtPrec_eq_divAtPrec_one",
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
  "slug": "invatprec-eq-divatprec-one--46798f07ee4cd998cd3208be",
  "source": {
    "blob": "5063980ee575a982d365bb2764eaeab15c3e1706",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46798f07ee4cd998cd3208be98240ee772c3b274f1ce4cf53dbfdee63317f1a1",
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

Occurrence: `result:f09c0915-d02f-600b-c054-ee73cb0bdb4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invAtPrec_eq_divAtPrec_one (x : Dyadic) (prec : Int) :
    invAtPrec x prec = divAtPrec 1 x prec := by
  cases x with
  | zero => rfl
  | ofOdd n k hn =>
    show ((Dyadic.ofOdd n k hn).toRat⁻¹).toDyadic prec =
        ((1 : Rat) / (Dyadic.ofOdd n k hn).toRat).toDyadic prec
    rw [Rat.div_def, Rat.one_mul]

/--
If `y : Dyadic` has precision at most `prec` and a rational `q` lies in the half-open
interval `[y.toRat, y.toRat + 2 ^ (-prec))`, then `y` is the floor of `q` at precision
`prec`, i.e. `y = q.toDyadic prec`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant143a160ab620417ad7209da6527d564ea8e727cc492d2f1a884c5c33a6cb31f2.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5063980ee575a982d365bb2764eaeab15c3e1706` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
