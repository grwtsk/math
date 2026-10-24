# mem_range_scalar_iff_commute_single'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f4111a9-77dd-8cad-795b-f246ab13baf4",
  "kind": "theorem",
  "lexical_name": "mem_range_scalar_iff_commute_single'",
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
  "slug": "mem-range-scalar-iff-commute-single--57238d5b6b3559ce4b09c688",
  "source": {
    "blob": "07957742821bda64244649c77b9328c2578e56c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 379,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57238d5b6b3559ce4b09c6880e74e7587123bf89c2f0d1da91860adf44903859",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f4111a9-77dd-8cad-795b-f246ab13baf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_range_scalar_iff_commute_single' {M : Matrix n n α} :
    M ∈ Set.range (Matrix.scalar n) ↔ ∀ (i j : n), Commute (single i j 1) M := by
  refine ⟨fun ⟨r, hr⟩ i j => hr ▸ Commute.symm ?_,
    fun hM => mem_range_scalar_iff_commute_single.mpr <| fun i j _ => hM i j⟩
  rw [scalar_commute_iff]
  simp

@[deprecated (since := "2025-05-05")]
alias mem_range_scalar_iff_commute_stdBasisMatrix' := mem_range_scalar_iff_commute_single'

end Commute

end Matrix
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantaf32bbaf589c016edd1a7c5dffe462c01f1a677fe522cb8fe0899701eedcada5.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07957742821bda64244649c77b9328c2578e56c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
