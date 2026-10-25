# _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.ZFSet.isOrdinal_iff_trichotomous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c987051e-e7da-b9ae-ac96-3fb96fcd952a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.ZFSet.isOrdinal_iff_trichotomous",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-settheory-isordinal-variant8ab--8045826b54483b328f6bc62c",
  "source": {
    "blob": "46a31e604c745f5322f6523366b6eb706c809c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8045826b54483b328f6bc62c8760721acc3aa242892503a547e528d26b8f5886",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c987051e-e7da-b9ae-ac96-3fb96fcd952a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.IsOrdinal.Variant8ab295d19b7c9edf61976a75df6295937e6b4a1836b1f8acb0cbb335e1ed9c5a.ZFSet.isOrdinal_iff_trichotomous :
    x.IsOrdinal ↔ x.IsTransitive ∧ Std.Trichotomous (Subrel (· ∈ ·) (· ∈ x)) where
  mp h := ⟨h.isTransitive, h.trichotomous⟩
  mpr := by
    rintro ⟨h₁, h₂⟩
    rw [isOrdinal_iff_isTrans]
    refine ⟨h₁, ⟨@fun y z w hyz hzw ↦ ?_⟩⟩
    obtain hyw | rfl | hwy := trichotomous_of (Subrel (· ∈ ·) (· ∈ x)) y w
    · exact hyw
    · cases asymm hyz hzw
    · cases mem_wf.asymmetric₃ _ _ _ hyz hzw hwy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant4b60a4f30ae27937cb72e3b73442ef4db6d53fb3299605d58ef7ab85daa24c41.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46a31e604c745f5322f6523366b6eb706c809c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
