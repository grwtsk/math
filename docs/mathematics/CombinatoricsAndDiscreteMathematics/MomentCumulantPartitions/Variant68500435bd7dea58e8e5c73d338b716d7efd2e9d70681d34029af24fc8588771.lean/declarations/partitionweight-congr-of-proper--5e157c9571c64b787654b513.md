# partitionWeight_congr_of_proper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e60c7578-4218-1a94-e386-6ac1e8a1b9ae",
  "kind": "theorem",
  "lexical_name": "partitionWeight_congr_of_proper",
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
  "slug": "partitionweight-congr-of-proper--5e157c9571c64b787654b513",
  "source": {
    "blob": "b1e37471f094dcd8413ff59986e150191047123a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 146,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e157c9571c64b787654b5132bc3a9e82565755c3d43a04d78882a5f8a1b5635",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e60c7578-4218-1a94-e386-6ac1e8a1b9ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partitionWeight_congr_of_proper
    (n : ℕ) (hn : 0 < n)
    {κ₁ κ₂ : Finset (Fin n) → R}
    {P : DirectionPartition n}
    (hP : P ∈ properPartitions n hn)
    (hκ :
      ∀ B : Finset (Fin n),
        B ≠ (Finset.univ : Finset (Fin n)) →
          κ₁ B = κ₂ B) :
    partitionWeight κ₁ P = partitionWeight κ₂ P := by
  unfold partitionWeight
  apply Finset.prod_congr rfl
  intro B hB
  apply hκ B
  intro hBu
  subst B
  exact (univ_not_mem_of_mem_properPartitions n hn hP) hB

/-- Proper-partition contributions depend only on proper-block values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e37471f094dcd8413ff59986e150191047123a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
