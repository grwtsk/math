# centeredResidueFiberSquareExpansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3ca0687-edcc-8543-4079-a520e8737cd7",
  "kind": "theorem",
  "lexical_name": "centeredResidueFiberSquareExpansion",
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
  "slug": "centeredresiduefibersquareexpansion--cda2eef3fa8a94f8f0e9c106",
  "source": {
    "blob": "f1ef8a1621beac56033f471991cbc06911cfc9ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cda2eef3fa8a94f8f0e9c10608b38578f8b884e9a36c82da93ab9f115c3d98b7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3ca0687-edcc-8543-4079-a520e8737cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredResidueFiberSquareExpansion
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    (∑ a ∈ Finset.range (d * d),
      parityHalfIndexCenteredResidueFiber b d r H a ^ 2) =
      ∑ h ∈ H,
        ∑ g ∈ H,
          ∑ m ∈ zeroWindingHalfIndexBaseSet b r h,
            ∑ n ∈ zeroWindingHalfIndexBaseSet b r g,
              if halfIndexZeroWindingCoordinate m h ≡
                  halfIndexZeroWindingCoordinate n g [MOD d * d] then
                halfIndexBinaryMobiusCoefficient r m h *
                  halfIndexBinaryMobiusCoefficient r n g
              else 0 := by
  classical
  unfold parityHalfIndexCenteredResidueFiber
  simp only [pow_two, Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  conv_lhs =>
    arg 2
    ext h
    rw [Finset.sum_comm]
    arg 2
    ext g
    rw [Finset.sum_comm]
    arg 2
    ext m
    rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h hh
  apply Finset.sum_congr rfl
  intro g hg
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hmod :
      halfIndexZeroWindingCoordinate m h ≡
        halfIndexZeroWindingCoordinate n g [MOD d * d]
  · have hres :
        halfIndexZeroWindingCoordinate m h % (d * d) =
          halfIndexZeroWindingCoordinate n g % (d * d) := hmod
    rw [hres]
    rw [Finset.sum_eq_single
      (halfIndexZeroWindingCoordinate n g % (d * d))]
    · simp [hmod]
    · intro a ha hane
      have hne :
          halfIndexZeroWindingCoordinate n g % (d * d) ≠ a :=
        Ne.symm hane
      simp [hne]
    · intro hnot
      have hqpos : 0 < d * d :=
        Nat.mul_pos
          (Nat.pos_of_ne_zero (NeZero.ne d))
          (Nat.pos_of_ne_zero (NeZero.ne d))
      exact
        (hnot
          (Finset.mem_range.mpr
            (Nat.mod_lt _ hqpos))).elim
  · have hne : halfIndexZeroWindingCoordinate m h % (d * d) ≠
        halfIndexZeroWindingCoordinate n g % (d * d) := hmod
    simp [hmod, hne]

/-- The residue square mass is exactly the full congruence surface. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingResidueDispersion.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1ef8a1621beac56033f471991cbc06911cfc9ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
