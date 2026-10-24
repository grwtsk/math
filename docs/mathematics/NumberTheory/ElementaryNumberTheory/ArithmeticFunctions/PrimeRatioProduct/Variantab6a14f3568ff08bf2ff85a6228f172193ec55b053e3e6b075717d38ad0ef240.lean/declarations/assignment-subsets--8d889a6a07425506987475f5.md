# assignment_subsets

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a4e6e2d3-1782-faff-db6e-1d56e4c8cccd",
  "kind": "theorem",
  "lexical_name": "assignment_subsets",
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
  "slug": "assignment-subsets--8d889a6a07425506987475f5",
  "source": {
    "blob": "8dacd16366adce0ddddf3184896bd48a76bdede8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 64,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d889a6a07425506987475f5a9c1c4980ccc1fc0002f61115f04aa356eca42eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a4e6e2d3-1782-faff-db6e-1d56e4c8cccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem assignment_subsets (P : Finset ℕ) (s : Σ _ : Finset ℕ, Finset ℕ)
    (hs : s ∈ assignments P) : s.1 ⊆ P ∧ s.2 ⊆ P ∧ Disjoint s.1 s.2 := by
  obtain ⟨hU, hV⟩ := mem_sigma.mp hs
  have hU' := mem_powerset.mp hU
  have hV' := mem_powerset.mp hV
  refine ⟨hU', fun p hp ↦ (mem_sdiff.mp (hV' hp)).1, ?_⟩
  apply disjoint_left.mpr
  intro p hpU hpV
  exact (mem_sdiff.mp (hV' hpV)).2 hpU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dacd16366adce0ddddf3184896bd48a76bdede8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
