# isConjRoot_zero_iff_eq_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3352f87f-e604-98fa-66a9-0cf044ee64c4",
  "kind": "theorem",
  "lexical_name": "isConjRoot_zero_iff_eq_zero'",
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
  "slug": "isconjroot-zero-iff-eq-zero--87e90864f037e9950ab10b1a",
  "source": {
    "blob": "a8df8e6bb099cc0d94c6ecb0d05cf5629ba7173d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 340,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87e90864f037e9950ab10b1a066a3ccfba6d2df8301aff0e59bb4aaacc01a63d",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3352f87f-e604-98fa-66a9-0cf044ee64c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isConjRoot_zero_iff_eq_zero' {x : S} : IsConjRoot K x 0 ↔ x = 0 :=
  eq_comm.trans <| isConjRoot_zero_iff_eq_zero_of_injective (algebraMap K S).injective

namespace IsConjRoot

/--
A variant of `IsConjRoot.ne_zero`, only assuming `Nontrivial R`,
`NoZeroSMulDivisors R A` and `Function.Injective (algebraMap R A)` instead of `Field R`. If `y` is
a conjugate root of a nonzero element `x`, then `y` is not zero.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsConjRoot/Variant559049c4a17e377d61bab6c43c26ebf631f4b81fb56a30793cc2e579d5a12318.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8df8e6bb099cc0d94c6ecb0d05cf5629ba7173d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
