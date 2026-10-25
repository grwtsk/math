# testBit_two_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ec3c3d8-f897-e73a-36ae-b0a206887a2e",
  "kind": "theorem",
  "lexical_name": "testBit_two_pow",
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
  "slug": "testbit-two-pow--12fc8f9b07e10dee8a9d5a74",
  "source": {
    "blob": "13928f1646079f8cf5e67bf1a29431a1557e6804",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 392,
    "line": 379,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12fc8f9b07e10dee8a9d5a742771ada84761b9f07f4873f9fa9e117f0536bc32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ec3c3d8-f897-e73a-36ae-b0a206887a2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–392.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testBit_two_pow {n m : Nat} : testBit (2 ^ n) m = decide (n = m) := by
  rw [testBit, shiftRight_eq_div_pow]
  by_cases h : n = m
  · simp [h, Nat.div_self (Nat.pow_pos Nat.zero_lt_two)]
  · simp only [h]
    cases Nat.lt_or_lt_of_ne h
    · rw [div_eq_of_lt (Nat.pow_lt_pow_of_lt (by omega) (by omega))]
      simp
    · rw [Nat.pow_div _ Nat.two_pos,
         ← Nat.sub_add_cancel (succ_le_of_lt <| Nat.sub_pos_of_lt (by omega))]
      simp [Nat.pow_succ, mul_mod_left]
      omega

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantf70db39ba473ad941481e18057fbefcbfe366b4963f4e1310199849569dfab8c.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13928f1646079f8cf5e67bf1a29431a1557e6804` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
