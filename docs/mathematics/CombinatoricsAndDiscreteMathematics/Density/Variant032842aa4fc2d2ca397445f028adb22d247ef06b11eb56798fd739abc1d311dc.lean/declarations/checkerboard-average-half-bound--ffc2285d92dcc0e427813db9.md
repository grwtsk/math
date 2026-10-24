# checkerboard_average_half_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d959dbcf-b1e6-4673-c6d7-2d5b3fa4f91f",
  "kind": "theorem",
  "lexical_name": "checkerboard_average_half_bound",
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
  "slug": "checkerboard-average-half-bound--ffc2285d92dcc0e427813db9",
  "source": {
    "blob": "596a750b4a1f7f26614e38d22bd920d3a2694ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc2285d92dcc0e427813db95db3c14f0b3e2eb11c1ef89e0595c6e21e8b81c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d959dbcf-b1e6-4673-c6d7-2d5b3fa4f91f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem checkerboard_average_half_bound
    (m n : Nat)
    (_h : 0 < m * n) :
    2 * BinaryMatrix.countOnes (checkerboard m n) =
        BinaryMatrix.cellCount (checkerboard m n) ∨
      2 * BinaryMatrix.countOnes (checkerboard m n) + 1 =
        BinaryMatrix.cellCount (checkerboard m n) ∨
      2 * BinaryMatrix.countOnes (checkerboard m n) =
        BinaryMatrix.cellCount (checkerboard m n) + 1 := by
  let N := BinaryMatrix.cellCount (checkerboard m n)
  have hones : BinaryMatrix.countOnes (checkerboard m n) = N / 2 := by
    simpa [N] using checkerboard_countOnes_eq m n
  have hN : N = 2 * (N / 2) + N % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod N 2).symm
  rcases Nat.mod_two_eq_zero_or_one N with hmod | hmod
  · left
    omega
  · right
    left
    omega

end Bitspace
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Density/Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596a750b4a1f7f26614e38d22bd920d3a2694ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
