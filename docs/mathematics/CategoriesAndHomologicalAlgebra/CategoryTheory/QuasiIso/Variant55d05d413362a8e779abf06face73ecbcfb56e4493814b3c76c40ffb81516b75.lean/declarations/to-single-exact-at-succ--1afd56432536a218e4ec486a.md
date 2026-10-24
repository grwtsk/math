# to_single₀_exact_at_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8928fba7-5c45-01bb-e028-8aaaa4b0bb80",
  "kind": "theorem",
  "lexical_name": "to_single₀_exact_at_succ",
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
  "slug": "to-single-exact-at-succ--1afd56432536a218e4ec486a",
  "source": {
    "blob": "183336563c2f76d319f6532ded3662e1357a2a21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1afd56432536a218e4ec486a4d0f36fcaeaf1f430c92c67b33222cfcdefa789f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8928fba7-5c45-01bb-e028-8aaaa4b0bb80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem to_single₀_exact_at_succ [hf : QuasiIso f] (n : ℕ) :
    Exact (X.d (n + 2) (n + 1)) (X.d (n + 1) n) :=
  (Preadditive.exact_iff_homology_zero _ _).2
    ⟨X.d_comp_d _ _ _,
      ⟨(ChainComplex.homologySuccIso _ _).symm.trans
          ((@asIso _ _ _ _ _ (hf.1 (n + 1))).trans homologyZeroZero)⟩⟩
#align homological_complex.hom.to_single₀_exact_at_succ HomologicalComplex.Hom.to_single₀_exact_at_succ

end

section

variable {X : CochainComplex W ℕ} {Y : W} (f : (CochainComplex.single₀ _).obj Y ⟶ X)

/-- If a cochain map `f : Y[0] ⟶ X` is a quasi-isomorphism, then the kernel of the differential
`d : X₀ → X₁` is isomorphic to `Y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuasiIso/Variant55d05d413362a8e779abf06face73ecbcfb56e4493814b3c76c40ffb81516b75.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `183336563c2f76d319f6532ded3662e1357a2a21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
