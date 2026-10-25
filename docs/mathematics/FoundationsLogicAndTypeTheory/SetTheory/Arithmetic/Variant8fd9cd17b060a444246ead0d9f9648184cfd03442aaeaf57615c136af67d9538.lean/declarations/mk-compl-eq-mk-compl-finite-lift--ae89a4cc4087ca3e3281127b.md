# mk_compl_eq_mk_compl_finite_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:078b1f97-dd14-b7d5-ccf4-72367df78bad",
  "kind": "theorem",
  "lexical_name": "mk_compl_eq_mk_compl_finite_lift",
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
  "slug": "mk-compl-eq-mk-compl-finite-lift--ae89a4cc4087ca3e3281127b",
  "source": {
    "blob": "f305683007986bde0cf6a215f1969fda392f1d0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 778,
    "line": 765,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant8fd9cd17b060a444246ead0d9f9648184cfd03442aaeaf57615c136af67d9538.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae89a4cc4087ca3e3281127bc82cadf54c51ce3ceda2b519dfe23a564c5045b4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant8fd9cd17b060a444246ead0d9f9648184cfd03442aaeaf57615c136af67d9538.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:078b1f97-dd14-b7d5-ccf4-72367df78bad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 765–778.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_compl_eq_mk_compl_finite_lift {α : Type u} {β : Type v} [Finite α] {s : Set α}
    {t : Set β} (h1 : (lift.{max v w, u} #α) = (lift.{max u w, v} #β))
    (h2 : lift.{max v w, u} #s = lift.{max u w, v} #t) :
    lift.{max v w} #(sᶜ : Set α) = lift.{max u w} #(tᶜ : Set β) := by
  cases nonempty_fintype α
  rcases lift_mk_eq.{u, v, w}.1 h1 with ⟨e⟩; letI : Fintype β := Fintype.ofEquiv α e
  replace h1 : Fintype.card α = Fintype.card β := (Fintype.ofEquiv_card _).symm
  classical
    lift s to Finset α using s.toFinite
    lift t to Finset β using t.toFinite
    simp only [Finset.coe_sort_coe, mk_fintype, Fintype.card_coe, lift_natCast, Nat.cast_inj] at h2
    simp only [← Finset.coe_compl, Finset.coe_sort_coe, mk_coe_finset, Finset.card_compl,
      lift_natCast, Nat.cast_inj, h1, h2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant8fd9cd17b060a444246ead0d9f9648184cfd03442aaeaf57615c136af67d9538.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Arithmetic/Variant8fd9cd17b060a444246ead0d9f9648184cfd03442aaeaf57615c136af67d9538.lean#L765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f305683007986bde0cf6a215f1969fda392f1d0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
