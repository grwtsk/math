# closed_mass_two_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e1f7e88-0296-e9d4-e154-e08524679f83",
  "kind": "theorem",
  "lexical_name": "closed_mass_two_lower",
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
  "slug": "closed-mass-two-lower--737274cdd7eb87773454cc2a",
  "source": {
    "blob": "0fbb5e0063a611c4a8b2fb238ad710124d46c254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variant77ec7a96e6f6271aa6f81c380edee9e92ffac0ae52256d50496d0cfe5a3c2542.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:737274cdd7eb87773454cc2a2be9dd7642b55a3e873b3d0bd0780e7afddba6ba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variant77ec7a96e6f6271aa6f81c380edee9e92ffac0ae52256d50496d0cfe5a3c2542.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e1f7e88-0296-e9d4-e154-e08524679f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem closed_mass_two_lower {A : ℝ} (hA : 1 ≤ A) :
    ArithmeticFunction.vonMangoldt 2 / (2 : ℝ) ^ (3 / 2 : ℝ) ≤
      actualClosedPrimeRightMass A := by
  have he : (2 : ℝ) ≤ Real.exp (2 * A) := by
    have hh := Real.add_one_le_exp (2 * A)
    linarith
  have hn : 2 < ⌊Real.exp (2 * A)⌋₊ + 1 := by
    have hh : 2 ≤ ⌊Real.exp (2 * A)⌋₊ :=
      (Nat.le_floor_iff (Real.exp_pos _).le).mpr he
    omega
  have hh := Finset.single_le_sum
    (f := fun n : ℕ => if n = 0 then (0 : ℝ) else
      ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ))
    (fun n _ => by split_ifs <;> positivity) (Finset.mem_range.mpr hn)
  simpa only [Nat.reduceEqDiff, if_false, Nat.cast_ofNat, actualClosedPrimeRightMass] using hh

/-- The fixed central coefficient is strictly positive using the actual prime two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variant77ec7a96e6f6271aa6f81c380edee9e92ffac0ae52256d50496d0cfe5a3c2542.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative15/Variant77ec7a96e6f6271aa6f81c380edee9e92ffac0ae52256d50496d0cfe5a3c2542.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbb5e0063a611c4a8b2fb238ad710124d46c254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
