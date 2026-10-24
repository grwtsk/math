# measurableEquivNatBoolOfNotCountable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3e911767d476308a90454ebfca3142deac6b914d11ed0aa1bdc71ee4349952e",
  "kind": "def",
  "lexical_name": "measurableEquivNatBoolOfNotCountable",
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
  "slug": "measurableequivnatboolofnotcountable--35b6410263d774338040cce6",
  "source": {
    "blob": "13d22689357e296d272a36ec51174a0849e49fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 899,
    "line": 890,
    "path": "GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35b6410263d774338040cce69601198532b50e1df75deaae55fab4d7c0c1e95d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3e911767d476308a90454ebfca3142deac6b914d11ed0aa1bdc71ee4349952e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–899.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def measurableEquivNatBoolOfNotCountable (h : ¬Countable α) : α ≃ᵐ (ℕ → Bool) := by
  apply Nonempty.some
  obtain ⟨f, -, fcts, finj⟩ :=
    isClosed_univ.exists_nat_bool_injection_of_not_countable
      (by rwa [← countable_coe_iff, (Equiv.Set.univ _).countable_iff])
  obtain ⟨g, gmeas, ginj⟩ := MeasurableSpace.measurable_injection_nat_bool_of_countablyGenerated α
  exact ⟨borelSchroederBernstein gmeas ginj fcts.measurable finj⟩
#align polish_space.measurable_equiv_nat_bool_of_not_countable PolishSpace.measurableEquivNatBoolOfNotCountable

/-- The **Borel Isomorphism Theorem**: Any two uncountable Polish spaces are Borel isomorphic.-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13d22689357e296d272a36ec51174a0849e49fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
