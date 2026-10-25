# leastExt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0789a558b0d36532a66f107fdcdcf8be3608a59b6ef345bafb1e9ba1f0e3b69",
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
  "slug": "leastext--f4ddfbca9204984cf5eeca4f",
  "source": {
    "blob": "dcdcfbf208753a1e8aea63502525c472b94d03a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4ddfbca9204984cf5eeca4f3a064c6bcc39853ae9586024b3b231fbd184e9a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0789a558b0d36532a66f107fdcdcf8be3608a59b6ef345bafb1e9ba1f0e3b69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def leastExt : ι → ι :=
  wellFounded_lt.fix fun i ih ↦
    let s := range fun j : Iio i ↦ b (ih j j.2)
    wellFounded_lt.min {k | b k ∉ adjoin F s} <| by
      rw [← compl_ofPred, nonempty_compl]; by_contra!
      simp_rw [eq_univ_iff_forall, mem_ofPred] at this
      have := adjoin_le_iff.mpr (range_subset_iff.mpr this)
      rw [adjoin_basis_eq_top, ← eq_top_iff] at this
      apply_fun Module.rank F at this
      refine ne_of_lt ?_ this
      conv_rhs => rw [topEquiv.toLinearEquiv.rank_eq]
      have := mk_Iio_lt i (by simp)
      rw [mk_toType, card_ord] at this
      obtain eq | lt := rank_inf.out.eq_or_lt
      · simp_rw [← eq, mk_lt_aleph0_iff] at this
        have : FiniteDimensional F (adjoin F s) :=
          finiteDimensional_adjoin fun x _ ↦ (IsAlgebraic.isAlgebraic x).isIntegral
        exact (Module.rank_lt_aleph0 _ _).trans_eq eq
      · exact (Subalgebra.equivOfEq _ _ <| adjoin_toSubalgebra_of_isAlgebraic
          fun x _ ↦ IsAlgebraic.isAlgebraic x) |>.toLinearEquiv.rank_eq.trans_lt <|
          (Algebra.rank_adjoin_le _).trans_lt (max_lt (mk_range_le.trans_lt this) lt)

local notation "φ" => leastExt F E

section
local notation "E⟮<" i "⟯" => adjoin F (b ∘ φ '' Iio i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variantb08f1c0aee4b7f0f98e150f75985c19ba93376177f3d0504d634d4488034cc1c.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcdcfbf208753a1e8aea63502525c472b94d03a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
