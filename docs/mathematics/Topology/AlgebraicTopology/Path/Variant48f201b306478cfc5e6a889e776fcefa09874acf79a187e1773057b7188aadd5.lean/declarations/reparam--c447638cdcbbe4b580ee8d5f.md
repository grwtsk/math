# reparam

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:814d06bd3f993f8065ca16a9ad62487ea844af7b7f9cabf4449e5238af97d33e",
  "kind": "def",
  "lexical_name": "reparam",
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
  "slug": "reparam--c447638cdcbbe4b580ee8d5f",
  "source": {
    "blob": "e72f2e002c138a3f907088a3e9ef56841bed2091",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 177,
    "path": "GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c447638cdcbbe4b580ee8d5f9ac8bea7f3285a05ba2db5e7cd13da5ffaaf1f28",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:814d06bd3f993f8065ca16a9ad62487ea844af7b7f9cabf4449e5238af97d33e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reparam (p : Path x₀ x₁) (f : I → I) (hf : Continuous f) (hf₀ : f 0 = 0) (hf₁ : f 1 = 1) :
    Homotopy p (p.reparam f hf hf₀ hf₁) where
  toFun x := p ⟨σ x.1 * x.2 + x.1 * f x.2,
    show (σ x.1 : ℝ) • (x.2 : ℝ) + (x.1 : ℝ) • (f x.2 : ℝ) ∈ I from
      convex_Icc _ _ x.2.2 (f x.2).2 (by unit_interval) (by unit_interval) (by simp)⟩
  map_zero_left x := by norm_num
  map_one_left x := by norm_num
  prop' t x hx := by
    rcases hx with hx | hx
    · rw [hx]
      simp [hf₀]
    · rw [Set.mem_singleton_iff] at hx
      rw [hx]
      simp [hf₁]
  continuous_toFun := by fun_prop

/-- Suppose `F : Homotopy p q`. Then we have a `Homotopy p.symm q.symm` by reversing the second
argument.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Path/Variant48f201b306478cfc5e6a889e776fcefa09874acf79a187e1773057b7188aadd5.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e72f2e002c138a3f907088a3e9ef56841bed2091` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
