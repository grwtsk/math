# representative_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a1dd7bb-6a0c-4d01-0184-583632d64dbf",
  "kind": "theorem",
  "lexical_name": "representative_height",
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
  "slug": "representative-height--f86b2472f0e9573654e8271c",
  "source": {
    "blob": "08bf6ec91f9a7815932c3a245b5d5132fb986135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 175,
    "path": "GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f86b2472f0e9573654e8271ca86050a7200c13aba7191ffa3212f8085db6457e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a1dd7bb-6a0c-4d01-0184-583632d64dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem representative_height (x : ι → ℚ) :
    maxAbs (fun j => (representative x j : ℚ)) = height x := by
  let M := maxAbs (fun j => (representative x j : ℚ))
  have hd : (0 : ℚ) < denominator x := Nat.cast_pos.mpr (Nat.pos_of_ne_zero (denominator_ne_zero x))
  have hn (i : ι) : |(numerator x i : ℚ)| = (denominator x : ℚ) * |x i| := by
    rw [← numerator_spec, abs_mul, abs_of_pos hd]
  apply le_antisymm
  · apply (maxAbs_le_iff _ _).mpr
    intro j
    cases j with
    | none =>
      change |(denominator x : ℚ)| ≤ (denominator x : ℚ) * max 1 (maxAbs x)
      rw [abs_of_pos hd]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left (le_max_left (1 : ℚ) _) hd.le
    | some i =>
      change |(numerator x i : ℚ)| ≤ _
      rw [hn]
      exact mul_le_mul_of_nonneg_left ((entry_le x i).trans (le_max_right _ _)) hd.le
  · have hD : (denominator x : ℚ) ≤ M := by
      simpa [representative, abs_of_pos hd] using
        entry_le (fun j => (representative x j : ℚ)) none
    have hx : maxAbs x ≤ M / (denominator x : ℚ) := by
      apply (maxAbs_le_iff _ _).mpr
      intro i
      apply (le_div_iff₀ hd).mpr
      have hi := entry_le (fun j => (representative x j : ℚ)) (some i)
      change |(numerator x i : ℚ)| ≤ M at hi
      simpa only [hn, mul_comm] using hi
    have hDx : (denominator x : ℚ) * maxAbs x ≤ M := by
      simpa only [mul_comm] using (le_div_iff₀ hd).mp hx
    rcases le_total (maxAbs x) 1 with h | h
    · simpa [height, max_eq_left h] using hD
    · simpa [height, max_eq_right h] using hDx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bf6ec91f9a7815932c3a245b5d5132fb986135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
