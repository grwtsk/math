# cooper_dvd_right_core

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:935ed937-ef56-68e5-2f89-5a7f8664d853",
  "kind": "theorem",
  "lexical_name": "cooper_dvd_right_core",
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
  "slug": "cooper-dvd-right-core--3fc9557b8880cc620e7f908b",
  "source": {
    "blob": "1e5d731a50a7d946997aeff81d9c755aabd23e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1606,
    "line": 1581,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fc9557b8880cc620e7f908b379caedc369af45c8e82ebef0ee65752933a0abf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:935ed937-ef56-68e5-2f89-5a7f8664d853`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1581–1606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cooper_dvd_right_core
    {a b c d s p q x : Int} (a_neg : a < 0) (b_pos : 0 < b) (d_pos : 0 < d)
    (h₁ : a * x + p ≤ 0)
    (h₂ : b * x + q ≤ 0)
    (h₃ : d ∣ c * x + s)
    : OrOver (Int.lcm b (b * d / Int.gcd (b * d) c)) fun k =>
      b * p + (-a) * q + (-a) * k ≤ 0 ∧
      b ∣ q + k ∧
      b * d ∣ (-c) * q + b * s + (-c) * k := by
  have a_pos' : 0 < -a := by apply Int.neg_pos_of_neg; assumption
  have h₁'    : p ≤ (-a)*x := by rw [Int.neg_mul, ← Lean.Omega.Int.add_le_zero_iff_le_neg']; assumption
  have h₂'    : b * x ≤ -q := by rw [← Lean.Omega.Int.add_le_zero_iff_le_neg', Int.add_comm]; assumption
  have ⟨k, h₁, h₂, h₃, h₄, h₅⟩ := Int.cooper_resolution_dvd_right a_pos' b_pos d_pos |>.mp ⟨x, h₁', h₂', h₃⟩
  simp only [Int.neg_mul, Int.mul_neg, Int.neg_neg] at *
  apply orOver_of_exists
  have hlt := ofNat_lt h₁ h₂
  replace h₃ := Int.add_le_add_right h₃ (-(a*q)); rw [Int.add_right_neg] at h₃
  have : -(a * k) + b * p + -(a * q) = b * p + -(a * q) + -(a * k) := by ac_rfl
  rw [this] at h₃; clear this
  rw [Int.sub_neg, Int.add_comm] at h₄
  have : -(c * k) + -(c * q) + b * s = -(c * q) + b * s + -(c * k) := by ac_rfl
  rw [this] at h₅; clear this
  exists k.toNat
  simp only [hlt, and_true, cast_toNat h₁, h₃, h₄, h₅]

@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Linear/Variant918426e0f1381ba7681e65e2de55f4fe5dd8e46597f1bc2914e822424b9c8006.lean#L1581).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e5d731a50a7d946997aeff81d9c755aabd23e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
