# norm_le_convexBodySumFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a1f79aa-6687-9e01-08fc-d109e3868a8b",
  "kind": "theorem",
  "lexical_name": "norm_le_convexBodySumFun",
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
  "slug": "norm-le-convexbodysumfun--e21fe40baad44d24d626d5c1",
  "source": {
    "blob": "74653116c7f397063415db43507efd1c65a6c1ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 305,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e21fe40baad44d24d626d5c13fd37294af38f918c05c04582b65b87807f30252",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a1f79aa-6687-9e01-08fc-d109e3868a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_le_convexBodySumFun (x : mixedSpace K) : ‖x‖ ≤ convexBodySumFun x := by
  rw [norm_eq_sup'_normAtPlace]
  refine (Finset.sup'_le_iff _ _).mpr fun w _ ↦ ?_
  rw [convexBodySumFun_apply, ← Finset.univ.add_sum_erase _ (Finset.mem_univ w)]
  refine le_add_of_le_of_nonneg  ?_ ?_
  · exact le_mul_of_one_le_left (normAtPlace_nonneg w x) one_le_mult
  · exact Finset.sum_nonneg (fun _ _ => mul_nonneg (Nat.cast_pos.mpr mult_pos).le
      (normAtPlace_nonneg _ _))

variable (K)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ConvexBody/Variantc40b7e3f9533944374df6ad550263d7e6f56599558500a28abea106f9c1d84e6.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74653116c7f397063415db43507efd1c65a6c1ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
