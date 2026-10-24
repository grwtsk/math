# single_le_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f01cd50-3744-4308-e3ad-9f8d88aace81",
  "kind": "theorem",
  "lexical_name": "single_le_sum",
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
  "slug": "single-le-sum--8b40b2c18f69de8067e5647f",
  "source": {
    "blob": "ad6f687a7a5abb6a3ca389b72bf7458353dd03a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b40b2c18f69de8067e5647f5fe06462b0d435dd29821595dc881b3535362c30",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f01cd50-3744-4308-e3ad-9f8d88aace81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem single_le_sum {α M N : Type*} [Zero M] [AddCommMonoid N]
    [PartialOrder N] [IsOrderedAddMonoid N] (f : α →₀ M) {g : α → M → N}
    (h : 0 ≤ (g · ·)) (a : α) :
    ((single a (f a)).sum g) ≤ f.sum g := by
  rcases eq_or_ne (f a) 0 with H | H
  · rw [H, single_zero, sum_zero_index]
    exact sum_nonneg' (fun i ↦ h i (f i))
  · rw [sum, support_single _ H, sum_singleton, single_eq_same]
    apply Finset.single_le_sum (fun i hi ↦ h i (f i))
    simpa [mem_support_iff, ne_eq] using H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variant4df9429617dd5f76c405fa60e8961fe7b972f7e6c84a3023180d6f1a3d75f5c0.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6f687a7a5abb6a3ca389b72bf7458353dd03a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
