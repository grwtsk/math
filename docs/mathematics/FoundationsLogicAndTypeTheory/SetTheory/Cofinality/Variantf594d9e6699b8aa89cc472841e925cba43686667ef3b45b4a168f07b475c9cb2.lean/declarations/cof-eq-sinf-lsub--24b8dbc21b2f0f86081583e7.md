# cof_eq_sInf_lsub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63fd1ca2-de49-c7c8-e9e8-42e8131c0f3b",
  "kind": "theorem",
  "lexical_name": "cof_eq_sInf_lsub",
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
  "slug": "cof-eq-sinf-lsub--24b8dbc21b2f0f86081583e7",
  "source": {
    "blob": "71ca5b32cb36542d19ecc36089cd53f434e5baee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24b8dbc21b2f0f86081583e73765321568ab062b7f8357d6b775518776a89260",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63fd1ca2-de49-c7c8-e9e8-42e8131c0f3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cof_eq_sInf_lsub (o : Ordinal.{u}) : cof o =
    sInf { a : Cardinal | ∃ (ι : Type u) (f : ι → Ordinal), lsub.{u, u} f = o ∧ #ι = a } := by
  refine le_antisymm (le_csInf (cof_lsub_def_nonempty o) ?_) (csInf_le' ?_)
  · rintro a ⟨ι, f, hf, rfl⟩
    rw [← type_toType o]
    refine
      (cof_type_le fun a => ?_).trans
        (@mk_le_of_injective _ _
          (fun s : typein ((· < ·) : o.toType → o.toType → Prop) ⁻¹' Set.range f =>
            Classical.choose s.prop)
          fun s t hst => by
          let H := congr_arg f hst
          rwa [Classical.choose_spec s.prop, Classical.choose_spec t.prop, typein_inj,
            Subtype.coe_inj] at H)
    have := typein_lt_self a
    simp_rw [← hf, lt_lsub_iff] at this
    obtain ⟨i, hi⟩ := this
    refine ⟨enum (α := o.toType) (· < ·) ⟨f i, ?_⟩, ?_, ?_⟩
    · rw [type_toType, ← hf]
      apply lt_lsub
    · rw [mem_preimage, typein_enum]
      exact mem_range_self i
    · rwa [← typein_le_typein, typein_enum]
  · rcases cof_eq (α := o.toType) (· < ·) with ⟨S, hS, hS'⟩
    let f : S → Ordinal := fun s => typein LT.lt s.val
    refine ⟨S, f, le_antisymm (lsub_le fun i => typein_lt_self (o := o) i)
      (le_of_forall_lt fun a ha => ?_), by rwa [type_toType o] at hS'⟩
    rw [← type_toType o] at ha
    rcases hS (enum (· < ·) ⟨a, ha⟩) with ⟨b, hb, hb'⟩
    rw [← typein_le_typein, typein_enum] at hb'
    exact hb'.trans_lt (lt_lsub.{u, u} f ⟨b, hb⟩)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variantf594d9e6699b8aa89cc472841e925cba43686667ef3b45b4a168f07b475c9cb2.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71ca5b32cb36542d19ecc36089cd53f434e5baee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
