# opENorm_lsmul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59cbc3ee-6976-7a7a-ef8a-90179328036a",
  "kind": "theorem",
  "lexical_name": "opENorm_lsmul_le",
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
  "slug": "openorm-lsmul-le--ef134a658aa7fc57b7de2de6",
  "source": {
    "blob": "f2380814d0a83afb95cd4b02609043aeb38b623a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 231,
    "path": "GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef134a658aa7fc57b7de2de6feb79ecc4b7d05440e8895771b3bc2465bfa3feb",
  "verification": {
    "reference": "docs/verification/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59cbc3ee-6976-7a7a-ef8a-90179328036a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opENorm_lsmul_le : ‖(lsmul 𝕜 R : R →L[𝕜] E →L[𝕜] E)‖ₑ ≤ 1 := by
  rw [enorm_eq_nnnorm]
  simpa using opNNNorm_lsmul_le

end SMulLinear

end ContinuousLinearMap

end SemiNormed

section Normed

namespace ContinuousLinearMap

variable [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable (𝕜) (R : Type*)

section

variable [NonUnitalNormedRing R] [NormedSpace 𝕜 R] [IsScalarTower 𝕜 R R]
variable [SMulCommClass 𝕜 R R] [RegularNormedAlgebra 𝕜 R] [Nontrivial R]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2380814d0a83afb95cd4b02609043aeb38b623a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
