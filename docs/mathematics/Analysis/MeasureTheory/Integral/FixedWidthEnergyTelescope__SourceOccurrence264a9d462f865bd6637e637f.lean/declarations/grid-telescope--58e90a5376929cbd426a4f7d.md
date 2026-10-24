# grid_telescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdc7f8c1-f288-371b-4f9c-b3e27fa7d5a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    },
    {
      "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5825813-7687-c02e-13ce-9ee6141ed6f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8370c6f5-43fb-b975-cc99-370ebd1da928",
  "kind": "theorem",
  "lexical_name": "grid_telescope",
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
  "slug": "grid-telescope--58e90a5376929cbd426a4f7d",
  "source": {
    "blob": "beb92fcfbed12582b897e7cb58f05419f05979bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 87,
    "path": "GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58e90a5376929cbd426a4f7db5a5c63af6804110cc8e51f4aae413878b5bb820",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8370c6f5-43fb-b975-cc99-370ebd1da928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grid_telescope {b : ℝ} (hb : 0 ≤ b) (n : ℕ) :
    energy ((n:ℝ)*b) =
      ∑ j ∈ Finset.range n, localEnergy b (((j:ℝ)+1)*b) := by
  induction n with
  | zero => simp [energy_zero]
  | succ n ih =>
    rw [Finset.sum_range_succ]
    have hs := energy_step hb (show b ≤ ((n+1:ℕ):ℝ)*b by
      have hn := Nat.cast_nonneg (α := ℝ) n
      push_cast
      nlinarith)
    have he : ((n+1:ℕ):ℝ)*b-b = (n:ℝ)*b := by push_cast; ring
    rw [he, ih] at hs
    simpa only [Nat.cast_add,Nat.cast_one] using hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Integral/FixedWidthEnergyTelescope__SourceOccurrence264a9d462f865bd6637e637f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/MeasureTheory/Integral/FixedWidthEnergyTelescope.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `beb92fcfbed12582b897e7cb58f05419f05979bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
