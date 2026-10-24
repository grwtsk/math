# card_primitiveRoots

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:334a581b-44a8-ded7-fb8d-9fd2162a10bc",
  "kind": "theorem",
  "lexical_name": "card_primitiveRoots",
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
  "slug": "card-primitiveroots--808108ebc59bad18cd2c85a6",
  "source": {
    "blob": "9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 648,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:808108ebc59bad18cd2c85a63d131b987013dc04dd6685c1088fad0c86f9f22b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:334a581b-44a8-ded7-fb8d-9fd2162a10bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_primitiveRoots {ζ : R} {k : ℕ} (h : IsPrimitiveRoot ζ k) :
    #(primitiveRoots k R) = φ k := by
  by_cases h0 : k = 0
  · simp [h0]
  have : NeZero k := ⟨h0⟩
  symm
  refine Finset.card_bij (fun i _ ↦ ζ ^ i) ?_ ?_ ?_
  · simp only [and_imp, mem_filter, mem_range, mem_univ]
    rintro i - hi
    rw [mem_primitiveRoots (Nat.pos_of_ne_zero h0)]
    exact h.pow_of_coprime i hi.symm
  · simp only [and_imp, mem_filter, mem_range, mem_univ]
    rintro i hi - j hj - H
    exact h.pow_inj hi hj H
  · simp only [exists_prop, mem_filter, mem_range, mem_univ]
    intro ξ hξ
    rw [mem_primitiveRoots (Nat.pos_of_ne_zero h0), h.isPrimitiveRoot_iff] at hξ
    rcases hξ with ⟨i, hin, hi, H⟩
    exact ⟨i, ⟨hin, hi.symm⟩, H⟩

/-- The sets `primitiveRoots k R` are pairwise disjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimitiveRoots/Varianteadd5c9d85febf17425b35ee4595a3bf5e50775b3d4532260cf3d6dfda10795c.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef59be2ed2adac4f4bf70ef4ce09e6425053ec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
