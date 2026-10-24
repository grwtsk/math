# chainBotCoeff_of_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca3bdbbf-fd27-969c-c62b-217f22fb7da1",
  "kind": "lemma",
  "lexical_name": "chainBotCoeff_of_add",
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
  "slug": "chainbotcoeff-of-add--56363fdf1ecf4a0b9dceadce",
  "source": {
    "blob": "6d9b566699b6f060d451937da1f5cb9c5f61f25d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 340,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56363fdf1ecf4a0b9dceadcec156c5a70adc75a5b7c5bc788a5d95f2b808f4f4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca3bdbbf-fd27-969c-c62b-217f22fb7da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chainBotCoeff_of_add {k : ι} (hk : P.root k = P.root j + P.root i) :
    P.chainBotCoeff i k = P.chainBotCoeff i j + 1 := by
  have h' : LinearIndependent R ![P.root i, P.root k] := by simpa [hk, add_comm]
  apply Nat.cast_injective (R := ℤ)
  rw [Nat.cast_add, Nat.cast_one, coe_chainBotCoeff_eq_sSup h', coe_chainBotCoeff_eq_sSup h]
  have (z : ℤ) : P.root k - z • P.root i = P.root j - (z - 1) • P.root i := by rw [hk]; module
  replace this : {z : ℤ | P.root k - z • P.root i ∈ range P.root} =
      OrderIso.addRight 1 '' {n | P.root j - n • P.root i ∈ range P.root} := by
    simp [this, sub_eq_add_neg]
  have bdd : BddAbove {z : ℤ | P.root j - z • P.root i ∈ range P.root} := by
    rw [setOfPred_root_sub_zsmul_mem_eq_Icc h]
    exact bddAbove_Icc
  rw [this, ← OrderIso.map_csSup' _ ⟨0, by simp⟩ bdd, OrderIso.addRight_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variant723e869ed584ffdd172187a52971b0260bd70451d6995a2f7cffdf7f5544d4d1.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d9b566699b6f060d451937da1f5cb9c5f61f25d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
