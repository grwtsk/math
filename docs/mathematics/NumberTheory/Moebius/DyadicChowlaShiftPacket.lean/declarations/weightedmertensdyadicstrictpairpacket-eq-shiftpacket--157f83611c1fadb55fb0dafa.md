# weightedMertensDyadicStrictPairPacket_eq_shiftPacket

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddc879ee-5e5b-b07e-f678-bd2c8ed86070",
  "kind": "theorem",
  "lexical_name": "weightedMertensDyadicStrictPairPacket_eq_shiftPacket",
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
  "slug": "weightedmertensdyadicstrictpairpacket-eq-shiftpacket--157f83611c1fadb55fb0dafa",
  "source": {
    "blob": "d38b6d53b279195f6132e0725bbf909f58962a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 223,
    "path": "GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:157f83611c1fadb55fb0dafa682e9e577ddb6401acf3b6999dee3cd16e2dd830",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddc879ee-5e5b-b07e-f678-bd2c8ed86070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensDyadicStrictPairPacket_eq_shiftPacket (j : ℕ) :
    weightedMertensDyadicStrictPairPacket j =
      weightedMertensDyadicShiftPacket j := by
  let Y : ℕ := 2 ^ (j + 1)
  unfold weightedMertensDyadicStrictPairPacket
    weightedMertensDyadicShiftPacket
    weightedMertensDyadicShiftContribution
  rw [show 2 ^ (j + 1) = Y by rfl]
  have hrev : ∀ b ∈ Finset.Ico 1 Y,
      (∑ a ∈ Finset.Ico 1 b,
        moebiusReal a * moebiusReal b *
          dyadicMertensShiftWeight j b) =
      ∑ h ∈ Finset.Ico 1 b,
        moebiusReal (b - h) * moebiusReal b *
          dyadicMertensShiftWeight j b := by
    intro b _
    exact sum_Ico_strict_eq_sum_lag b
      (fun a => moebiusReal a * moebiusReal b *
        dyadicMertensShiftWeight j b)
  have hsumrev :
      (∑ b ∈ Finset.Ico 1 Y,
        ∑ a ∈ Finset.Ico 1 b,
          moebiusReal a * moebiusReal b *
            dyadicMertensShiftWeight j b) =
      ∑ b ∈ Finset.Ico 1 Y,
        ∑ h ∈ Finset.Ico 1 b,
          moebiusReal (b - h) * moebiusReal b *
            dyadicMertensShiftWeight j b := by
    apply Finset.sum_congr rfl
    intro b hb
    exact hrev b hb
  rw [hsumrev]
  have hext : ∀ b ∈ Finset.Ico 1 Y,
      (∑ h ∈ Finset.Ico 1 b,
        moebiusReal (b - h) * moebiusReal b *
          dyadicMertensShiftWeight j b) =
      ∑ h ∈ Finset.Ico 1 Y,
        if h < b then
          moebiusReal (b - h) * moebiusReal b *
            dyadicMertensShiftWeight j b
        else 0 := by
    intro b hb
    exact sum_Ico_strict_eq_sum_if (Finset.mem_Ico.mp hb).2
      (fun h => moebiusReal (b - h) * moebiusReal b *
        dyadicMertensShiftWeight j b)
  have hsumext :
      (∑ b ∈ Finset.Ico 1 Y,
        ∑ h ∈ Finset.Ico 1 b,
          moebiusReal (b - h) * moebiusReal b *
            dyadicMertensShiftWeight j b) =
      ∑ b ∈ Finset.Ico 1 Y,
        ∑ h ∈ Finset.Ico 1 Y,
          if h < b then
            moebiusReal (b - h) * moebiusReal b *
              dyadicMertensShiftWeight j b
          else 0 := by
    apply Finset.sum_congr rfl
    intro b hb
    exact hext b hb
  rw [hsumext, ← Finset.mul_sum]
  rw [Finset.sum_comm]

/-- The finite tail kernel and the complete signed shift packet are identical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DyadicChowlaShiftPacket.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38b6d53b279195f6132e0725bbf909f58962a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
