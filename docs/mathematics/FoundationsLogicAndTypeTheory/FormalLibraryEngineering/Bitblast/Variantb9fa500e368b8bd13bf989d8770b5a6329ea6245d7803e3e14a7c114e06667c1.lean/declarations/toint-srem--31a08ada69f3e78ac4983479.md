# toInt_srem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82729d7b-7784-b5fa-2fa2-63b5f370ffa4",
  "kind": "theorem",
  "lexical_name": "toInt_srem",
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
  "slug": "toint-srem--31a08ada69f3e78ac4983479",
  "source": {
    "blob": "77050a46ff99d345da672844caf68022db57852a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1867,
    "line": 1840,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31a08ada69f3e78ac498347932f34740367d15d768ce6db3603ddff07b928093",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82729d7b-7784-b5fa-2fa2-63b5f370ffa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1840–1867.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_srem (x y : BitVec w) : (x.srem y).toInt = x.toInt.tmod y.toInt := by
  rw [srem_eq]
  by_cases hyz : y = 0#w
  · simp only [hyz, msb_zero, umod_zero, neg_zero, neg_neg, toInt_zero, Int.tmod_zero]
    cases x.msb <;> rfl
  cases h : x.msb
  · cases h' : y.msb
    · dsimp only
      rw [toInt_eq_toNat_of_msb (msb_umod_eq_false_of_left h y), toNat_umod]
      rw [toInt_eq_toNat_of_msb h, toInt_eq_toNat_of_msb h', ← Int.ofNat_tmod]
    · dsimp only
      rw [toInt_eq_toNat_of_msb (msb_umod_eq_false_of_left h _), toNat_umod]
      rw [toInt_eq_toNat_of_msb h, toInt_eq_neg_toNat_neg_of_msb_true h']
      rw [Int.tmod_neg, ← Int.ofNat_tmod]
  · cases h' : y.msb
    · dsimp only
      rw [toInt_eq_neg_toNat_neg_of_msb_true h, toInt_eq_toNat_of_msb h', Int.neg_tmod]
      rw [← Int.ofNat_tmod, ← toNat_umod, toInt_neg_eq_of_msb ?msb, toInt_eq_toNat_of_msb ?msb]
      rw [BitVec.msb_umod_of_le_of_ne_zero_of_le (neg_le_intMin_of_msb_eq_true h) hyz]
      exact le_intMin_of_msb_eq_false h'
    · dsimp only
      rw [toInt_eq_neg_toNat_neg_of_msb_true h, toInt_eq_neg_toNat_neg_of_msb_true h', Int.neg_tmod, Int.tmod_neg]
      rw [← Int.ofNat_tmod, ← toNat_umod, toInt_neg_eq_of_msb ?msb', toInt_eq_toNat_of_msb ?msb']
      rw [BitVec.msb_umod_of_le_of_ne_zero_of_le (neg_le_intMin_of_msb_eq_true h)
        ((not_congr neg_eq_zero_iff).mpr hyz)]
      exact neg_le_intMin_of_msb_eq_true h'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantb9fa500e368b8bd13bf989d8770b5a6329ea6245d7803e3e14a7c114e06667c1.lean#L1840).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77050a46ff99d345da672844caf68022db57852a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
