# borel_eq_generateFrom_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e4d7aa-06f3-482a-a251-aed49a8bdaef",
  "kind": "theorem",
  "lexical_name": "borel_eq_generateFrom_Iio",
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
  "slug": "borel-eq-generatefrom-iio--67d3f6a769ce3b939843a1b6",
  "source": {
    "blob": "bf7761044a2eca410d520e2d468bbdb6aa480c7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 132,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67d3f6a769ce3b939843a1b61bcfa8a2ff99c6faa4959f3696b2de5d50f2a28e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e4d7aa-06f3-482a-a251-aed49a8bdaef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_eq_generateFrom_Iio : borel α = .generateFrom (range Iio) := by
  refine' le_antisymm _ (generateFrom_le _)
  · rw [borel_eq_generateFrom_of_subbasis (@OrderTopology.topology_eq_generate_intervals α _ _ _)]
    letI : MeasurableSpace α := MeasurableSpace.generateFrom (range Iio)
    have H : ∀ a : α, MeasurableSet (Iio a) := fun a => GenerateMeasurable.basic _ ⟨_, rfl⟩
    refine' generateFrom_le _
    rintro _ ⟨a, rfl | rfl⟩ <;> [skip; apply H]
    by_cases h : ∃ a', ∀ b, a < b ↔ a' ≤ b
    · rcases h with ⟨a', ha'⟩
      rw [(_ : Ioi a = (Iio a')ᶜ)]
      · exact (H _).compl
      simp [Set.ext_iff, ha']
    · rcases isOpen_iUnion_countable (fun a' : { a' : α // a < a' } => { b | a'.1 < b }) fun a' =>
          isOpen_lt' _ with ⟨v, ⟨hv⟩, vu⟩
      simp [Set.ext_iff] at vu
      have : Ioi a = ⋃ x : v, (Iio x.1.1)ᶜ := by
        simp [Set.ext_iff]
        refine' fun x => ⟨fun ax => _, fun ⟨a', ⟨h, _⟩, ax⟩ => lt_of_lt_of_le h ax⟩
        rcases (vu x).2 (by
          refine' not_imp_comm.1 (fun h => _) h
          exact ⟨x, fun b =>
            ⟨fun ab => le_of_not_lt fun h' => h ⟨b, ab, h'⟩, lt_of_lt_of_le ax⟩⟩) with ⟨a', h₁, h₂⟩
        · exact ⟨a', h₁, le_of_lt h₂⟩
      rw [this]
      skip
      apply MeasurableSet.iUnion
      exact fun _ => (H _).compl
  · rw [forall_range_iff]
    intro a
    exact GenerateMeasurable.basic _ isOpen_Iio
#align borel_eq_generate_from_Iio borel_eq_generateFrom_Iio

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantf8e1ca2e1c04e0577252a7fdf48f20d8921221097c302781571558427daf4466.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf7761044a2eca410d520e2d468bbdb6aa480c7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
