# mvPolynomial_aeval_of_surjective_of_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f9fd0554-7b29-1181-0bd8-f579c9eecc9b",
  "kind": "theorem",
  "lexical_name": "mvPolynomial_aeval_of_surjective_of_closure",
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
  "slug": "mvpolynomial-aeval-of-surjective-of-closure--0c38c3563d39c8429ef4ec7f",
  "source": {
    "blob": "1dda6c9206e6187b9b13d614c8cda4b511f625ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 586,
    "path": "GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c38c3563d39c8429ef4ec7f296bdd8bf1e6ba6f2ed890ee536bc5860ba8e07e",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9fd0554-7b29-1181-0bd8-f579c9eecc9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mvPolynomial_aeval_of_surjective_of_closure [CommSemiring R] {S : Set M}
    (hS : closure S = ⊤) :
    Function.Surjective
      (MvPolynomial.aeval fun s : S => of R M ↑s : MvPolynomial S R → MonoidAlgebra R M) := by
  intro f
  induction' f using induction_on with m f g ihf ihg r f ih
  · have : m ∈ closure S := hS.symm ▸ mem_top _
    refine' closure_induction this (fun m hm => _) _ _
    · exact ⟨MvPolynomial.X ⟨m, hm⟩, MvPolynomial.aeval_X _ _⟩
    · exact ⟨1, AlgHom.map_one _⟩
    · rintro m₁ m₂ ⟨P₁, hP₁⟩ ⟨P₂, hP₂⟩
      exact
        ⟨P₁ * P₂, by
          rw [AlgHom.map_mul, hP₁, hP₂, of_apply, of_apply, of_apply, single_mul_single, one_mul]⟩
  · rcases ihf with ⟨P, rfl⟩; rcases ihg with ⟨Q, rfl⟩
    exact ⟨P + Q, AlgHom.map_add _ _ _⟩
  · rcases ih with ⟨P, rfl⟩
    exact ⟨r • P, AlgHom.map_smul _ _ _⟩
#align monoid_algebra.mv_polynomial_aeval_of_surjective_of_closure MonoidAlgebra.mvPolynomial_aeval_of_surjective_of_closure

/-- If a monoid `M` is finitely generated then `MonoidAlgebra R M` is of finite type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant7bf27a78da91922736d773ce837dfe568149ef5ddf6c2f37e0c1d0e96ab06b55.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dda6c9206e6187b9b13d614c8cda4b511f625ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
