# mertensTwoPointCarlesonSingletonSum_le_endpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21472978-488b-85d9-bd69-b4d993c4b618",
  "kind": "theorem",
  "lexical_name": "mertensTwoPointCarlesonSingletonSum_le_endpoint",
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
  "slug": "mertenstwopointcarlesonsingletonsum-le-endpoint--8d954bbe5bfa49a81a3a7313",
  "source": {
    "blob": "9419fe18fbf54d5842c11da5176674023e905e00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 464,
    "path": "GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d954bbe5bfa49a81a3a731379eb893f329095501ed49439d2afd8f6536d874f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21472978-488b-85d9-bd69-b4d993c4b618`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensTwoPointCarlesonSingletonSum_le_endpoint
    (j : ℕ) :
    mertensTwoPointCarlesonSingletonSum j ≤
      ((2 ^ (j + 1) : ℕ) : ℝ) := by
  let Y : ℕ := 2 ^ (j + 1)
  have hsquare : ∀ h ∈ Finset.Ico 1 Y,
      alignedDyadicScaleMaximum (j + 1) 0
          (paddedTwoPointSequence moebiusReal moebiusReal j h) ^ 2 ≤ 1 := by
    intro h _hh
    simpa only [one_pow] using (sq_le_sq₀
      (alignedDyadicScaleMaximum_nonneg (j + 1) 0
        (paddedTwoPointSequence moebiusReal moebiusReal j h))
      zero_le_one).2
        (mertensTwoPointCarlesonScaleZeroMaximum_le_one j h)
  calc
    mertensTwoPointCarlesonSingletonSum j ≤
        ∑ _h ∈ Finset.Ico 1 Y, (1 : ℝ) := by
      unfold mertensTwoPointCarlesonSingletonSum
      simpa [Y] using Finset.sum_le_sum hsquare
    _ = (((Finset.Ico 1 Y).card : ℕ) : ℝ) := by simp
    _ = ((Y - 1 : ℕ) : ℝ) := by rw [Nat.card_Ico]
    _ ≤ (Y : ℝ) := by exact_mod_cast Nat.sub_le Y 1
    _ = ((2 ^ (j + 1) : ℕ) : ℝ) := by rfl

/-- One exact shift-wise connection from the canonical Möbius prefix maximum to
the max-per-scale Carleson energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9419fe18fbf54d5842c11da5176674023e905e00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
