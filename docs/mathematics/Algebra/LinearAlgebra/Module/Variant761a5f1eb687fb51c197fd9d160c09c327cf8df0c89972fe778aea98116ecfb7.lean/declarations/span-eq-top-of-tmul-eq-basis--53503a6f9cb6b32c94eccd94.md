# span_eq_top_of_tmul_eq_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9df341f4-8700-6124-a068-26994b54587b",
  "kind": "theorem",
  "lexical_name": "span_eq_top_of_tmul_eq_basis",
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
  "slug": "span-eq-top-of-tmul-eq-basis--53503a6f9cb6b32c94eccd94",
  "source": {
    "blob": "1d7da37fe0a71d87ba655c04f5e3692f7f9a704e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 100,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53503a6f9cb6b32c94eccd94e54274c11a80180d948e649811afc51a2ee742ca",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9df341f4-8700-6124-a068-26994b54587b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_eq_top_of_tmul_eq_basis [Module.Finite R M] {ι}
    (f : ι → M) (b : Basis ι k (k ⊗[R] M))
    (hb : ∀ i, 1 ⊗ₜ f i = b i) : Submodule.span R (Set.range f) = ⊤ := by
  rw [← map_tensorProduct_mk_eq_top, Submodule.map_span, ← Submodule.restrictScalars_span R k
    Ideal.Quotient.mk_surjective, Submodule.restrictScalars_eq_top_iff,
    ← b.span_eq, ← Set.range_comp]
  simp only [Function.comp_def, mk_apply, hb, Basis.span_eq]

end IsLocalRing

@[deprecated (since := "2024-11-11")]
alias LocalRing.map_mkQ_eq := IsLocalRing.map_mkQ_eq

@[deprecated (since := "2024-11-11")]
alias LocalRing.map_mkQ_eq_top := IsLocalRing.map_mkQ_eq_top

@[deprecated (since := "2024-11-11")]
alias LocalRing.map_tensorProduct_mk_eq_top := IsLocalRing.map_tensorProduct_mk_eq_top

@[deprecated (since := "2024-11-11")]
alias LocalRing.subsingleton_tensorProduct := IsLocalRing.subsingleton_tensorProduct

@[deprecated (since := "2024-11-11")]
alias LocalRing.span_eq_top_of_tmul_eq_basis := IsLocalRing.span_eq_top_of_tmul_eq_basis

open Function in
/--
Given `M₁ → M₂ → M₃ → 0` and `N₁ → N₂ → N₃ → 0`,
if `M₁ ⊗ N₃ → M₂ ⊗ N₃` and `M₂ ⊗ N₁ → M₂ ⊗ N₂` are both injective,
then `M₃ ⊗ N₁ → M₃ ⊗ N₂` is also injective.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant761a5f1eb687fb51c197fd9d160c09c327cf8df0c89972fe778aea98116ecfb7.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d7da37fe0a71d87ba655c04f5e3692f7f9a704e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
