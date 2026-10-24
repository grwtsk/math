# domain_mvt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cd4d8a1-b8d7-5dfb-4da9-4539f749735a",
  "kind": "theorem",
  "lexical_name": "domain_mvt",
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
  "slug": "domain-mvt--7fbd7a14e53da61a860d1cf3",
  "source": {
    "blob": "f8bfa795e3f5929a13883060e46f6472f3de7d68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 543,
    "line": 523,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant1b46e095ba1571ff9f8eb0d253fcbceddf52ff7a9039b91953839f1d344babba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fbd7a14e53da61a860d1cf3eff82437a204251fff1577ee20dc9d6c940d6129",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant1b46e095ba1571ff9f8eb0d253fcbceddf52ff7a9039b91953839f1d344babba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cd4d8a1-b8d7-5dfb-4da9-4539f749735a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–543.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem domain_mvt {f : E → ℝ} {s : Set E} {x y : E} {f' : E → StrongDual ℝ E}
    (hf : ∀ x ∈ s, HasFDerivWithinAt f (f' x) s x) (hs : Convex ℝ s) (xs : x ∈ s) (ys : y ∈ s) :
    ∃ z ∈ segment ℝ x y, f y - f x = f' z (y - x) := by
  -- Use `g = AffineMap.lineMap x y` to parametrize the segment
  set g : ℝ → E := fun t => AffineMap.lineMap x y t
  set I := Icc (0 : ℝ) 1
  have hsub : Ioo (0 : ℝ) 1 ⊆ I := Ioo_subset_Icc_self
  have hmaps : MapsTo g I s := hs.mapsTo_lineMap xs ys
  -- The one-variable function `f ∘ g` has derivative `f' (g t) (y - x)` at each `t ∈ I`
  have hfg : ∀ t ∈ I, HasDerivWithinAt (f ∘ g) (f' (g t) (y - x)) I t := fun t ht =>
    (hf _ (hmaps ht)).comp_hasDerivWithinAt t AffineMap.hasDerivWithinAt_lineMap hmaps
  -- apply 1-variable mean value theorem to pullback
  have hMVT : ∃ t ∈ Ioo (0 : ℝ) 1, f' (g t) (y - x) = (f (g 1) - f (g 0)) / (1 - 0) := by
    refine exists_hasDerivAt_eq_slope (f ∘ g) _ (by simp) ?_ ?_
    · exact fun t Ht => (hfg t Ht).continuousWithinAt
    · exact fun t Ht => (hfg t <| hsub Ht).hasDerivAt (Icc_mem_nhds Ht.1 Ht.2)
  -- reinterpret on domain
  rcases hMVT with ⟨t, Ht, hMVT'⟩
  rw [segment_eq_image_lineMap, exists_mem_image]
  refine ⟨t, hsub Ht, ?_⟩
  simpa [g] using hMVT'.symm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant1b46e095ba1571ff9f8eb0d253fcbceddf52ff7a9039b91953839f1d344babba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant1b46e095ba1571ff9f8eb0d253fcbceddf52ff7a9039b91953839f1d344babba.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8bfa795e3f5929a13883060e46f6472f3de7d68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
