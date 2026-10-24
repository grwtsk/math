# traj_comp_partialTraj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 575,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7136cb81-b274-e988-f54a-60c0dbe119c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebc11fe8-5326-23c3-7529-e43d4a72a51c",
  "kind": "theorem",
  "lexical_name": "traj_comp_partialTraj",
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
  "slug": "traj-comp-partialtraj--f052e017a6b76599f14e62a1",
  "source": {
    "blob": "55c556e1012c4fcc8a84a45c7cd0c3a401453c4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 575,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f052e017a6b76599f14e62a1c6d856a57d0152c0f6e3c4f0b5a5016ec3fd353e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebc11fe8-5326-23c3-7529-e43d4a72a51c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traj_comp_partialTraj {a b : ℕ} (hab : a ≤ b) :
    (traj κ b) ∘ₖ (partialTraj κ a b) = traj κ a := by
  refine eq_traj _ _ fun n ↦ ?_
  rw [map_comp, traj_map_frestrictLe, partialTraj_comp_partialTraj' _ hab]

/-- This theorem shows that `traj κ n` is, up to an equivalence, the product of
a deterministic kernel with another kernel. This is an intermediate result to compute integrals
with respect to this kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variant71bc0882a4c76bb8cf03455cc0677bea923c55a4719d6d457c78212cb194516d.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55c556e1012c4fcc8a84a45c7cd0c3a401453c4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
