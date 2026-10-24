# span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3aeca77b17d3a4b2b736a7ef51b233300c02103e7f6ed964154524e17160f7ed",
  "kind": "def",
  "lexical_name": "span",
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
  "slug": "span--f0e17b9e14930f089dbe2bdc",
  "source": {
    "blob": "4c31632f323f38a612b7802ddf8fbdb5145c8cc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 178,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f0e17b9e14930f089dbe2bdc554910bd55a15df153561bbcc12fad24d57865ee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3aeca77b17d3a4b2b736a7ef51b233300c02103e7f6ed964154524e17160f7ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def span : Basis ι R (span R (range v)) :=
  Basis.mk (linearIndependent_span hli) <| by
    intro x _
    have : ∀ i, v i ∈ span R (range v) := fun i ↦ subset_span (Set.mem_range_self _)
    have h₁ : (((↑) : span R (range v) → M) '' range fun i => ⟨v i, this i⟩) = range v := by
      simp only [← Set.range_comp]
      rfl
    have h₂ : map (Submodule.subtype (span R (range v))) (span R (range fun i => ⟨v i, this i⟩)) =
        span R (range v) := by
      rw [← span_image, Submodule.coe_subtype, h₁]
    have h₃ : (x : M) ∈ map (Submodule.subtype (span R (range v)))
        (span R (Set.range fun i => Subtype.mk (v i) (this i))) := by
      rw [h₂]
      apply Subtype.mem x
    rcases mem_map.1 h₃ with ⟨y, hy₁, hy₂⟩
    have h_x_eq_y : x = y := by
      rw [Subtype.ext_iff, ← hy₂]
      simp
    rwa [h_x_eq_y]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc960c226533c843b3012faa649817df31deed3e544d2680d648ab861c1e5437b.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c31632f323f38a612b7802ddf8fbdb5145c8cc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
