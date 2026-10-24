# abs_pow_sub_pow_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20775701-50b0-9a51-6dfd-6dd3e95f3913",
  "kind": "theorem",
  "lexical_name": "abs_pow_sub_pow_le",
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
  "slug": "abs-pow-sub-pow-le--7e94132916ceb303bde15505",
  "source": {
    "blob": "c97cf907e11560c4ba70c22e5115ffc1c218c1ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 187,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e94132916ceb303bde15505cc583ef832b3e2040f0da9d371ae33a4f3b3b9d7",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20775701-50b0-9a51-6dfd-6dd3e95f3913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_pow_sub_pow_le : |a ^ n - b ^ n| ≤ |a - b| * n * max |a| |b| ^ (n - 1) := by
  obtain _ | n := n; · simp
  rw [Nat.add_sub_cancel, pow_sub_pow_eq_sub_mul_geomSum, abs_mul, mul_assoc, Nat.cast_succ]
  exact mul_le_mul_of_nonneg_left (abs_geomSum_le ..) (abs_nonneg _)

end LinearOrderedCommRing

section

variable [Ring α] [LinearOrder α]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Abs/Variant9e9e9c47ed9238ff930b21af293f55a16e45aaaf01742d4216567b27768a7f7b.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c97cf907e11560c4ba70c22e5115ffc1c218c1ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
