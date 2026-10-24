# hasDimensionLT_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f20b0ac-433a-74be-2e54-5ae804f91e34",
  "kind": "lemma",
  "lexical_name": "hasDimensionLT_prod",
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
  "slug": "hasdimensionlt-prod--4624b3930a71a2b14e912e00",
  "source": {
    "blob": "bbd3b23ce8bb20d54ed9b5da6546a5b81f1732bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 61,
    "path": "GRWTSK/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4624b3930a71a2b14e912e00b8f63b737fca63b20cf2016f769ea6995ceb2765",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f20b0ac-433a-74be-2e54-5ae804f91e34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasDimensionLT_prod
    (d₁ d₂ : ℕ) [X₁.HasDimensionLT d₁] [X₂.HasDimensionLT d₂]
    (n : ℕ) (hn : d₁ + d₂ ≤ n + 1 := by lia) :
    (X₁ ⊗ X₂).HasDimensionLT n := by
  rw [← hasDimensionLT_subcomplex_top_iff, ← iSup_subcomplexOfSimplex_prod_eq_top]
  simp only [Subcomplex.ofSimplexProd_eq_range, hasDimensionLT_iSup_iff]
  intro x₁ x₂
  have := X₁.dim_lt_of_nonDegenerate ⟨_, x₁.nonDegenerate⟩ d₁
  have := X₂.dim_lt_of_nonDegenerate ⟨_, x₂.nonDegenerate⟩ d₂
  have := (Δ[x₁.dim] ⊗ Δ[x₂.dim]).hasDimensionLT_of_le (x₁.dim + x₂.dim + 1) n
  infer_instance

variable (X₁ X₂) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/FiniteProd/Varianta637984287e5c4279494169ba82d1dcafbe02856ce7f2328a0917793469f0142.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbd3b23ce8bb20d54ed9b5da6546a5b81f1732bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
