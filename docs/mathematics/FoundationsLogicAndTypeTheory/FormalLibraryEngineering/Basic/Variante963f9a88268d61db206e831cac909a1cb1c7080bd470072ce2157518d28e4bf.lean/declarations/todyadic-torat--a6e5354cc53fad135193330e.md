# toDyadic_toRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c59a9d7b-4e99-803f-9f48-78e11c3f3842",
  "kind": "theorem",
  "lexical_name": "toDyadic_toRat",
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
  "slug": "todyadic-torat--a6e5354cc53fad135193330e",
  "source": {
    "blob": "452395bb8cdf6ea14fb051fb7993a1dc2e361e38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 571,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6e5354cc53fad135193330ebc7cd7895cdf9f750f929f81a08756571d7a5e27",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c59a9d7b-4e99-803f-9f48-78e11c3f3842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toDyadic_toRat (x : Dyadic) (prec : Int) :
    x.toRat.toDyadic prec = x.roundDown prec := by
  rcases x with _ | ⟨n, k, hn⟩
  · cases prec <;> simp [Rat.toDyadic, roundDown]
  · simp only [toRat_ofOdd_eq_mkRat, roundDown]
    rw [Rat.toDyadic_mkRat]
    simp only [← Int.shiftLeft_add, Int.natCast_shiftLeft, Int.cast_ofNat_Int]
    rw [Int.shiftLeft_eq' 1, Int.one_mul, ← Int.shiftRight_eq_div_pow]
    rw [Int.shiftLeft_shiftRight_eq, ← Int.toNat_sub, ← Int.toNat_sub, ← Int.neg_sub]
    have : ((k.toNat + (-prec).toNat : Nat) - ((-k).toNat + prec.toNat : Nat) : Int) = k - prec := by
      omega
    rw [this]
    cases h : k - prec
    · simp
    · simp only [Int.neg_negSucc, Int.natCast_add, Int.cast_ofNat_Int, Int.toNat_natCast_add_one,
        Int.toNat_negSucc, Int.shiftRight_zero]
      rw [Int.negSucc_eq, Int.eq_neg_comm, Int.neg_sub, eq_comm, Int.sub_eq_iff_eq_add] at h
      simp only [h, ← Int.natCast_add_one, Int.add_comm _ k, ofIntWithPrec_shiftLeft_add,
        ofOdd_eq_ofIntWithPrec]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante963f9a88268d61db206e831cac909a1cb1c7080bd470072ce2157518d28e4bf.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `452395bb8cdf6ea14fb051fb7993a1dc2e361e38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
