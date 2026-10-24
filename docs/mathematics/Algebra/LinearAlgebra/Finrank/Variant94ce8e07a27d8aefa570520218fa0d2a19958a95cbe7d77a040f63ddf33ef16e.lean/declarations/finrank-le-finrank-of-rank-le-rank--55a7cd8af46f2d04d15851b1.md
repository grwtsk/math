# finrank_le_finrank_of_rank_le_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ba1bd02-16d0-90ca-1eea-bffc51414f1d",
  "kind": "theorem",
  "lexical_name": "finrank_le_finrank_of_rank_le_rank",
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
  "slug": "finrank-le-finrank-of-rank-le-rank--55a7cd8af46f2d04d15851b1",
  "source": {
    "blob": "d7be7183d39298db203548d3885c2ca274cbd1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55a7cd8af46f2d04d15851b1b5f9f0a0da61e595d2cbbeb8267224522621b3e0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ba1bd02-16d0-90ca-1eea-bffc51414f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_le_finrank_of_rank_le_rank
    (h : lift.{w} (Module.rank R M) ≤ Cardinal.lift.{v} (Module.rank R N))
    (h' : Module.rank R N < ℵ₀) : finrank R M ≤ finrank R N := by
  simpa only [toNat_lift] using toNat_le_toNat h (lift_lt_aleph0.mpr h')

end Semiring

end Module

open Module

namespace LinearEquiv

/-- The dimension of a finite dimensional space is preserved under linear equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finrank/Variant94ce8e07a27d8aefa570520218fa0d2a19958a95cbe7d77a040f63ddf33ef16e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7be7183d39298db203548d3885c2ca274cbd1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
