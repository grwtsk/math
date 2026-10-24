# linearIdeal_span_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84aa06ed-3879-7cd7-cc1a-e5b426e21bc3",
  "kind": "theorem",
  "lexical_name": "linearIdeal_span_eq",
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
  "slug": "linearideal-span-eq--a7f165bda4a508d5ad934622",
  "source": {
    "blob": "79f0825f2a5a5b9e0c6ce92320d0de5286d7b618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7f165bda4a508d5ad93462218d97faad9c284051f93f001570c8d830cf23630",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84aa06ed-3879-7cd7-cc1a-e5b426e21bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIdeal_span_eq {α : Type*} (f : V →ₗ[R] A) (v : α → V) :
    Ideal.span (f '' (Submodule.span R (Set.range v) : Set V)) =
      Ideal.span (Set.range fun i ↦ f (v i)) := by
  apply le_antisymm
  · apply Ideal.span_le.mpr
    rintro _ ⟨x, hx, rfl⟩
    change f x ∈ Ideal.span (Set.range fun i ↦ f (v i))
    induction hx using Submodule.span_induction with
    | mem x hx =>
        rcases hx with ⟨i, rfl⟩
        exact Ideal.subset_span ⟨i, rfl⟩
    | zero => simpa only [map_zero] using (Ideal.span (Set.range fun i ↦ f (v i))).zero_mem
    | add x y _ _ hx hy =>
        simpa only [map_add] using (Ideal.span (Set.range fun i ↦ f (v i))).add_mem hx hy
    | smul r x _ hx =>
        simpa only [map_smul, Algebra.smul_def] using
          (Ideal.span (Set.range fun i ↦ f (v i))).mul_mem_left (algebraMap R A r) hx
  · apply Ideal.span_le.mpr
    rintro _ ⟨i, rfl⟩
    exact Ideal.subset_span ⟨v i, Submodule.subset_span ⟨i, rfl⟩, rfl⟩

variable {K : Type*} [Field K]
variable {M : Type*} [AddCommGroup M] [Module K M]
variable {B : Type*} [CommRing B] [Algebra K B]

/-- A linear-relation ideal in a symmetric algebra over a field is prime,
because the symmetric algebra of the quotient vector space is a domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/HomogeneousLinearIdeal/Variante764e4f54c45b9f48f675343900cf70e202ff51c5720d7b922c7afbd7ab5ebfd.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f0825f2a5a5b9e0c6ce92320d0de5286d7b618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
