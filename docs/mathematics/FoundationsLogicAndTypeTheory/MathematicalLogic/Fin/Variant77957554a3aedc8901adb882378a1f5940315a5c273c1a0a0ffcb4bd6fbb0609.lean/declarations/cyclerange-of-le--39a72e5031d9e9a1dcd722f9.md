# cycleRange_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35c4cfb0-8b18-bded-da8a-3b3119565398",
  "kind": "theorem",
  "lexical_name": "cycleRange_of_le",
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
  "slug": "cyclerange-of-le--39a72e5031d9e9a1dcd722f9",
  "source": {
    "blob": "fb2df05f7cdd1950ab4f1fbed04d870766a398be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39a72e5031d9e9a1dcd722f97978fd035b08460f37735dc3531ec2862a303d69",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35c4cfb0-8b18-bded-da8a-3b3119565398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleRange_of_le {n : ℕ} [NeZero n] {i j : Fin n} (h : j ≤ i) :
    cycleRange i j = if j = i then 0 else j + 1 := by
  cases n
  · subsingleton
  have : j = (Fin.castLE (Nat.succ_le_of_lt i.is_lt))
    ⟨j, lt_of_le_of_lt h (Nat.lt_succ_self i)⟩ := by simp
  ext
  rw [this, cycleRange, ofLeftInverse'_eq_ofInjective, ←
    Function.Embedding.toEquivRange_eq_ofInjective, ← viaFintypeEmbedding, ← coe_castLEEmb,
    viaFintypeEmbedding_apply_image, coe_castLEEmb, coe_castLE, coe_finRotate]
  simp only [Fin.ext_iff, val_last, val_mk, val_zero, Fin.eta, castLE_mk]
  split_ifs with heq
  · rfl
  · rw [Fin.val_add_one_of_lt]
    exact lt_of_lt_of_le (lt_of_le_of_ne h (mt (congr_arg _) heq)) (le_last i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant77957554a3aedc8901adb882378a1f5940315a5c273c1a0a0ffcb4bd6fbb0609.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2df05f7cdd1950ab4f1fbed04d870766a398be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
