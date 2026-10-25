# leastExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e17f862a6a8eb730a8f0df68215eb0fe18a729055cc489b5c3a52346ef369220",
  "kind": "def",
  "lexical_name": "leastExt",
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
  "slug": "leastext--a388a9c1798e23ac888fcdd4",
  "source": {
    "blob": "307b1bf0c022c9bcab76476ab7dba82ada765f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a388a9c1798e23ac888fcdd4edc726e06daddfcd53c4c12d52c8b4cbd3860561",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e17f862a6a8eb730a8f0df68215eb0fe18a729055cc489b5c3a52346ef369220`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leastExt : ι → ι :=
  wellFounded_lt.fix fun i ih ↦
    let s := range fun j : Iio i ↦ b (ih j j.2)
    wellFounded_lt.min {k | b k ∉ adjoin F s} <| by
      rw [← compl_setOf, nonempty_compl]; by_contra!
      simp_rw [eq_univ_iff_forall, mem_setOf] at this
      have := adjoin_le_iff.mpr (range_subset_iff.mpr this)
      rw [adjoin_basis_eq_top, ← eq_top_iff] at this
      apply_fun Module.rank F at this
      refine ne_of_lt ?_ this
      let _ : AddCommMonoid (⊤ : IntermediateField F E) := inferInstance
      conv_rhs => rw [topEquiv.toLinearEquiv.rank_eq]
      have := mk_Iio_ord_toType i
      obtain eq | lt := rank_inf.out.eq_or_lt
      · replace this := mk_lt_aleph0_iff.mp (this.trans_eq eq.symm)
        have : FiniteDimensional F (adjoin F s) :=
          finiteDimensional_adjoin fun x _ ↦ (IsAlgebraic.isAlgebraic x).isIntegral
        exact (Module.rank_lt_aleph0 _ _).trans_eq eq
      · exact (Subalgebra.equivOfEq _ _ <| adjoin_algebraic_toSubalgebra
          fun x _ ↦ IsAlgebraic.isAlgebraic x)|>.toLinearEquiv.rank_eq.trans_lt <|
          (Algebra.rank_adjoin_le _).trans_lt (max_lt (mk_range_le.trans_lt this) lt)

local notation "φ" => leastExt F E

section
local notation "E⟮<"i"⟯" => adjoin F (b ∘ φ '' Iio i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307b1bf0c022c9bcab76476ab7dba82ada765f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
