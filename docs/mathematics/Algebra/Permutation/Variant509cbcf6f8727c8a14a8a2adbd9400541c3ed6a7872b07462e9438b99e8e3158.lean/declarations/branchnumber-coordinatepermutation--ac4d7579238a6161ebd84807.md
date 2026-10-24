# branchNumber_coordinatePermutation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b6bc9cf-28c6-416e-7786-c5db1d9c8eff",
  "kind": "theorem",
  "lexical_name": "branchNumber_coordinatePermutation",
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
  "slug": "branchnumber-coordinatepermutation--ac4d7579238a6161ebd84807",
  "source": {
    "blob": "a06f25b10cce3c8305f6bd655dc7457000874341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 383,
    "path": "GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac4d7579238a6161ebd84807bb2f024ae324eb2ebdad0555eb6005bda2c178cb",
  "verification": {
    "reference": "docs/verification/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b6bc9cf-28c6-416e-7786-c5db1d9c8eff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem branchNumber_coordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    branchNumber (XorLinearEquiv.ofCoordinatePermutation π) = 2 := by
  apply Nat.le_antisymm
  · let i : Fin n := ⟨0, hn⟩
    calc
      branchNumber (XorLinearEquiv.ofCoordinatePermutation π) ≤
          hammingWeight (basisBit i) +
            hammingWeight
              ((XorLinearEquiv.ofCoordinatePermutation π).toFun
                (basisBit i)) :=
        branchNumber_le_activity _ hn (basisBit_ne_zero i)
      _ = 2 := by
        change hammingWeight (basisBit i) +
          hammingWeight (coordinatePermutation π (basisBit i)) = 2
        rw [hammingWeight_coordinatePermutation]
        simp [hammingWeight_basisBit]
  · exact two_le_branchNumber _ hn

/-! ## State-dependent corrections -/

/-- Add a state-dependent correction pointwise by Boolean XOR. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Permutation/Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a06f25b10cce3c8305f6bd655dc7457000874341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
