# surjective_of_linearIndependent_of_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06a2c891-8a2b-f49d-aab3-aab2ca453738",
  "kind": "theorem",
  "lexical_name": "surjective_of_linearIndependent_of_span",
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
  "slug": "surjective-of-linearindependent-of-span--6754550df17cbd36e93e8f2f",
  "source": {
    "blob": "3624b387ea4062357a4d5b9465d82c958c5cb63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1022,
    "line": 1002,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6754550df17cbd36e93e8f2fdf5dc359a68961bf17af1a8c907c19969b6b76f0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06a2c891-8a2b-f49d-aab3-aab2ca453738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1002–1022.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem surjective_of_linearIndependent_of_span [Nontrivial R] (hv : LinearIndependent R v)
    (f : ι' ↪ ι) (hss : range v ⊆ span R (range (v ∘ f))) : Surjective f := by
  intro i
  let repr : (span R (range (v ∘ f)) : Type _) → ι' →₀ R := (hv.comp f f.injective).repr
  let l := (repr ⟨v i, hss (mem_range_self i)⟩).mapDomain f
  have h_total_l : Finsupp.total ι M R v l = v i := by
    dsimp only []
    rw [Finsupp.total_mapDomain]
    rw [(hv.comp f f.injective).total_repr]
    -- Porting note: `rfl` isn't necessary.
  have h_total_eq : (Finsupp.total ι M R v) l = (Finsupp.total ι M R v) (Finsupp.single i 1) := by
    rw [h_total_l, Finsupp.total_single, one_smul]
  have l_eq : l = _ := LinearMap.ker_eq_bot.1 hv h_total_eq
  dsimp only [] at l_eq
  rw [← Finsupp.embDomain_eq_mapDomain] at l_eq
  rcases Finsupp.single_of_embDomain_single (repr ⟨v i, _⟩) f i (1 : R) zero_ne_one.symm l_eq with
    ⟨i', hi'⟩
  use i'
  exact hi'.2
#align surjective_of_linear_independent_of_span surjective_of_linearIndependent_of_span

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearIndependent/Variant15a3f1d129ee46ce6217a9429779d7bcbdf491054b754fd11aa3149c7777d7be.lean#L1002).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3624b387ea4062357a4d5b9465d82c958c5cb63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
