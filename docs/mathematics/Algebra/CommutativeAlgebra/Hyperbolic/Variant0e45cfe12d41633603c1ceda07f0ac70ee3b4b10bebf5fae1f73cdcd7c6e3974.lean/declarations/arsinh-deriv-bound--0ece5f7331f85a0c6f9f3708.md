# arsinh_deriv_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce173978-b354-8c3b-b547-2277964f1afc",
  "kind": "theorem",
  "lexical_name": "arsinh_deriv_bound",
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
  "slug": "arsinh-deriv-bound--0ece5f7331f85a0c6f9f3708",
  "source": {
    "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1235,
    "line": 1218,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ece5f7331f85a0c6f9f3708a69d0a2890f6f4f6be6c2cb3c43d4bc913d41447",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce173978-b354-8c3b-b547-2277964f1afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1218–1235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arsinh_deriv_bound (domain : IntervalRat) (n : ℕ) :
    ∀ x ∈ Set.Icc (min (domain.lo : ℝ) 0) (max (domain.hi : ℝ) 0),
      ‖iteratedDeriv n Real.arsinh x‖ ≤ asinhDerivSup domain n := by
  intro x hx
  unfold asinhDerivSup
  apply le_csSup
  · -- BddAbove: the image is bounded because the function is continuous on a compact set
    have hcompact : IsCompact (Set.Icc (min (domain.lo : ℝ) 0) (max (domain.hi : ℝ) 0)) := isCompact_Icc
    have hcont : ContinuousOn (fun x => ‖iteratedDeriv n Real.arsinh x‖)
        (Set.Icc (min (domain.lo : ℝ) 0) (max (domain.hi : ℝ) 0)) := by
      apply Continuous.continuousOn
      exact continuous_norm.comp (arsinh_continuous_iteratedDeriv n)
    exact hcompact.bddAbove_image hcont
  · -- x is in the image
    exact Set.mem_image_of_mem _ hx

/-- arsinh z ∈ (tmAsinh J n).evalSet z for all z in J.
    Uses taylor_remainder_bound with f = Real.arsinh, M = asinhDerivSup J (n+1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean#L1218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
