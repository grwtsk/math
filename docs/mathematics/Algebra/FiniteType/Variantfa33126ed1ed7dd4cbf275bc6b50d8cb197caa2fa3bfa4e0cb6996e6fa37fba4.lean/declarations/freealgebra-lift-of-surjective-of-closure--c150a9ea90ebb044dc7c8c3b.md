# freeAlgebra_lift_of_surjective_of_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f17c262f-0764-5ae4-46cd-648a72d78ea6",
  "kind": "theorem",
  "lexical_name": "freeAlgebra_lift_of_surjective_of_closure",
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
  "slug": "freealgebra-lift-of-surjective-of-closure--c150a9ea90ebb044dc7c8c3b",
  "source": {
    "blob": "8841c3e85e719c6cf5288c7d1a8def2927cfea98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 557,
    "path": "GRWTSK/Algebra/FiniteType/Variantfa33126ed1ed7dd4cbf275bc6b50d8cb197caa2fa3bfa4e0cb6996e6fa37fba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c150a9ea90ebb044dc7c8c3b191f687fe611afd049e69926ee7ba21beba160fd",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variantfa33126ed1ed7dd4cbf275bc6b50d8cb197caa2fa3bfa4e0cb6996e6fa37fba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f17c262f-0764-5ae4-46cd-648a72d78ea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem freeAlgebra_lift_of_surjective_of_closure [CommSemiring R] {S : Set M}
    (hS : closure S = ⊤) :
    Function.Surjective
      (FreeAlgebra.lift R fun s : S => of R M ↑s : FreeAlgebra R S → R[M]) := by
  intro f
  induction f using induction_on with
  | of m =>
    have : m ∈ closure S := hS.symm ▸ mem_top _
    refine Submonoid.closure_induction (fun m hm => ?_) ?_ ?_ this
    · exact ⟨FreeAlgebra.ι R ⟨m, hm⟩, FreeAlgebra.lift_ι_apply _ _⟩
    · exact ⟨1, map_one _⟩
    · rintro m₁ m₂ _ _ ⟨P₁, hP₁⟩ ⟨P₂, hP₂⟩
      exact
        ⟨P₁ * P₂, by
          rw [map_mul, hP₁, hP₂, of_apply, of_apply, of_apply, single_mul_single, one_mul]⟩
  | add f g ihf ihg =>
    rcases ihf with ⟨P, rfl⟩
    rcases ihg with ⟨Q, rfl⟩
    exact ⟨P + Q, map_add _ _ _⟩
  | smul r f ih =>
    rcases ih with ⟨P, rfl⟩
    exact ⟨r • P, map_smul _ _ _⟩

/-- If a monoid `M` is finitely generated then `R[M]` is of finite type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variantfa33126ed1ed7dd4cbf275bc6b50d8cb197caa2fa3bfa4e0cb6996e6fa37fba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variantfa33126ed1ed7dd4cbf275bc6b50d8cb197caa2fa3bfa4e0cb6996e6fa37fba4.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8841c3e85e719c6cf5288c7d1a8def2927cfea98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
