# aux_sub_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a25b8e2-e089-501a-d1ff-42137a83504d",
  "kind": "theorem",
  "lexical_name": "aux_sub_aux",
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
  "slug": "aux-sub-aux--a8712bf937acfd868a0b1d3f",
  "source": {
    "blob": "9ef76177eb9d4cc353203dfdac6449ecc80e2a3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 66,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8712bf937acfd868a0b1d3ff6caa83441e95252e88cd3bf0acc17e5c438d3a6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a25b8e2-e089-501a-d1ff-42137a83504d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aux_sub_aux (k n : ℕ) (x : R) :
    powMulProdOneSubPow k n x + x ^ (3 * k + 5) * powMulProdOneSubPow (k + 1) n x =
    aux k (n + 1) x - aux k n x := by
  simp_rw [aux, Finset.prod_range_succ, powMulProdOneSubPow]
  rw [Finset.prod_range_succ', Finset.prod_range_succ]
  ring_nf

variable [TopologicalSpace R] [IsTopologicalRing R] [T2Space R]

/-- By summing with telescoping, we get a recurrence formula for $A$

$$ A_k = 1 - x^{2k + 3} - x^{3k + 5}A_{k + 1} $$
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Ring/Variantef67c1296dd4888dd3eee8603affea63b9fb00a810e900d8520f33524f4847a0.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef76177eb9d4cc353203dfdac6449ecc80e2a3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
