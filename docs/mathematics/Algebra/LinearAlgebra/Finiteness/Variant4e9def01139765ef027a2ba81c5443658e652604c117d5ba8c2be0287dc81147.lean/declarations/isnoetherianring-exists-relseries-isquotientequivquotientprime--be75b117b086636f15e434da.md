# IsNoetherianRing.exists_relSeries_isQuotientEquivQuotientPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7922057b-9b87-3b1f-ca52-27d3405c8b91",
  "kind": "theorem",
  "lexical_name": "IsNoetherianRing.exists_relSeries_isQuotientEquivQuotientPrime",
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
  "slug": "isnoetherianring-exists-relseries-isquotientequivquotientprime--be75b117b086636f15e434da",
  "source": {
    "blob": "8406daec6a6319abb9f721aef5b3dbaacaf9f484",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be75b117b086636f15e434dac8e5d332e2e6c64cbca842ed77bcf0d212ea29fd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7922057b-9b87-3b1f-ca52-27d3405c8b91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNoetherianRing.exists_relSeries_isQuotientEquivQuotientPrime :
    ∃ s : RelSeries (Submodule.IsQuotientEquivQuotientPrime (A := A) (M := M)),
      s.head = ⊥ ∧ s.last = ⊤ := by
  refine WellFoundedGT.induction_top ⟨⊥, .singleton _ ⊥, rfl, rfl⟩ ?_
  rintro N hN ⟨s, hs₁, hs₂⟩
  have := Submodule.Quotient.nontrivial_of_lt_top _ hN.lt_top
  obtain ⟨p, hp, x, rfl⟩ := associatedPrimes.nonempty A (M ⧸ N)
  obtain ⟨x, rfl⟩ := Submodule.mkQ_surjective _ x
  have hxN : x ∉ N := fun h ↦ hp.ne_top (by rw [show N.mkQ x = 0 by simpa]; simp)
  have := Submodule.isQuotientEquivQuotientPrime_iff.mpr ⟨x, hp, rfl⟩
  refine ⟨_, by simpa [hs₂], s.snoc _ (hs₂ ▸ this), by simpa, rfl⟩

/-- If a property on finitely generated modules over a Noetherian ring satisfies that:

- it holds for zero module (it's formalized as it holds for any module which is subsingleton),
- it holds for `A ⧸ p` for every prime ideal `p` of `A` (to avoid universe problem,
  it's formalized as it holds for any module isomorphic to `A ⧸ p`),
- it is stable by short exact sequences,

then the property holds for every finitely generated modules.

NOTE: This should be the induction principle for `M`, but due to the bug
https://github.com/leanprover/lean4/issues/4246
currently it is induction for `Module.Finite A M`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant4e9def01139765ef027a2ba81c5443658e652604c117d5ba8c2be0287dc81147.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8406daec6a6319abb9f721aef5b3dbaacaf9f484` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
