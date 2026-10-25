# toDyadic_toRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb68a2a2-2154-f508-18a5-88d41d14a372",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:760e6e9e-76d9-f366-8d17-3aedd41eabd3",
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
  "slug": "todyadic-torat--4720d49fa34bbfe5f3f8add1",
  "source": {
    "blob": "197f830c1b5fd8c0e38afdc909f718c22a47905a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 563,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4720d49fa34bbfe5f3f8add148e7819709f41fc401627b8555a24b807d80ff4e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:760e6e9e-76d9-f366-8d17-3aedd41eabd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–582.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd66e06d833340d8909f33fca08767c46b834b0228a76cf41ccc21f439dbcf4c8.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `197f830c1b5fd8c0e38afdc909f718c22a47905a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
