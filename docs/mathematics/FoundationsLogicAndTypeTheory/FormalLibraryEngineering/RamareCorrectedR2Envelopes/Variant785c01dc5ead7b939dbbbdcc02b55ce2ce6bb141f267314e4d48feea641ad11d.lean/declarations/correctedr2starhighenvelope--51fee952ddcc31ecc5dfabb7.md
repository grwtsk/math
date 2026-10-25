# correctedR2StarHighEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e938f7457e1eef60d7e6f2333bbdedf708ee8ad4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/785c01dc5ead7b939dbbbdcc02b55ce2ce6bb141f267314e4d48feea641ad11d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19caac8a-c339-38c0-be13-52feb3cd74d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4bc6ee76-e0cb-b74a-7557-3d38901c7e4c",
  "kind": "theorem",
  "lexical_name": "correctedR2StarHighEnvelope",
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
  "slug": "correctedr2starhighenvelope--51fee952ddcc31ecc5dfabb7",
  "source": {
    "blob": "e938f7457e1eef60d7e6f2333bbdedf708ee8ad4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant785c01dc5ead7b939dbbbdcc02b55ce2ce6bb141f267314e4d48feea641ad11d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51fee952ddcc31ecc5dfabb71b4516394e3e93cf51ecffda7896e97674f68588",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant785c01dc5ead7b939dbbbdcc02b55ce2ce6bb141f267314e4d48feea641ad11d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bc6ee76-e0cb-b74a-7557-3d38901c7e4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedR2StarHighEnvelope
    (hfin : RamareCorrectedFiniteCertificates)
    (hinputs : RamareChebyshevInputs) :
    R2StarHighEnvelope := by
  intro u hlo
  let N : ℕ := ⌊u⌋₊
  have hu0 : 0 ≤ u := le_trans (by norm_num [eq22K0]) hlo
  have hNlo : (10 : ℕ) ^ 16 ≤ N := by
    apply Nat.le_floor
    simpa [eq22K0] using hlo
  have hNu : (N : ℝ) ≤ u := by
    dsimp [N]
    exact Nat.floor_le hu0
  have hN : 1 ≤ N := le_trans (by norm_num) hNlo
  have hbridge := r2Star_abs_le_corrected N hN
  have hNbound : |r2Star N| ≤ (65 / 10000 : ℝ) * N := by
    by_cases hmid : N ≤ (10 : ℕ) ^ 21
    · have hR3 := correctedR3_le_mid hinputs hfin N hNlo hmid
      have hR4 := correctedR4_abs_le_mid_high_sharp hinputs N hNlo hmid
      have hone : (1 : ℝ) ≤ (6 / 10000 : ℝ) * N := by
        have h10000Nat : 10000 ≤ N := le_trans (by norm_num) hNlo
        have h10000 : (10000 : ℝ) ≤ N := by exact_mod_cast h10000Nat
        nlinarith
      nlinarith
    · have h21 : (10 : ℕ) ^ 21 ≤ N := by omega
      have hR3 : correctedR3 N ≤ (21 / 10000 : ℝ) * N := by
        by_cases hpre : (N : ℝ) ≤ (effectivePNTHandoff : ℝ) ^ 2
        · exact correctedR3_le_pre_effective hinputs hfin N h21 hpre
        · exact correctedR3_le_effective hinputs hfin N (le_of_not_ge hpre)
      have hR4 := correctedR4_abs_le_high hinputs N hNlo
      have hone : (1 : ℝ) ≤ (16 / 10000 : ℝ) * N := by
        have h10000Nat : 10000 ≤ N := le_trans (by norm_num) h21
        have h10000 : (10000 : ℝ) ≤ N := by exact_mod_cast h10000Nat
        nlinarith
      nlinarith
  calc
    |r2Star ⌊u⌋₊| = |r2Star N| := by rfl
    _ ≤ (65 / 10000 : ℝ) * N := hNbound
    _ ≤ (65 / 10000 : ℝ) * u :=
      mul_le_mul_of_nonneg_left hNu (by norm_num)

#print axioms correctedR2StarMidEnvelope
#print axioms correctedR2StarHighEnvelope

end MathExtras.RamareMertens2025
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant785c01dc5ead7b939dbbbdcc02b55ce2ce6bb141f267314e4d48feea641ad11d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RamareCorrectedR2Envelopes/Variant785c01dc5ead7b939dbbbdcc02b55ce2ce6bb141f267314e4d48feea641ad11d.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e938f7457e1eef60d7e6f2333bbdedf708ee8ad4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
