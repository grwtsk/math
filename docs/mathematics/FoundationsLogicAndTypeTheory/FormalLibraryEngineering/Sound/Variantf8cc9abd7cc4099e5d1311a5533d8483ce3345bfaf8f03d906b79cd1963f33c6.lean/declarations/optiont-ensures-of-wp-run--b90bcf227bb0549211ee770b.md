# OptionT.ensures_of_wp_run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cdaa6bd-eb6c-2fe4-8528-1d5d6234cd5e",
  "kind": "theorem",
  "lexical_name": "OptionT.ensures_of_wp_run",
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
  "slug": "optiont-ensures-of-wp-run--b90bcf227bb0549211ee770b",
  "source": {
    "blob": "598884a231e51b846fe6583174a47f11bcf16e05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantf8cc9abd7cc4099e5d1311a5533d8483ce3345bfaf8f03d906b79cd1963f33c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b90bcf227bb0549211ee770bd7a764f11a22fbff92ece5e0c3d0094db350168b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantf8cc9abd7cc4099e5d1311a5533d8483ce3345bfaf8f03d906b79cd1963f33c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cdaa6bd-eb6c-2fe4-8528-1d5d6234cd5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem OptionT.ensures_of_wp_run
    [Monad m] [LawfulMonad m] [WP m .pure] [WPSound m .pure]
    {α : Type u} {prog : OptionT m α} (P : Option α → Prop)
    (hwp : ⊢ₛ wp⟦prog⟧ post⟨fun a => ⌜P (some a)⌝, fun _ => ⌜P none⌝⟩) :
    Internal.Ensures P prog.run := by
  apply WPSound.ensures_of_wp (m := m) (ps := .pure)
  simp only [WP.wp, PredTrans.apply_pushOption] at hwp
  apply SPred.entails.trans hwp
  apply (wp prog.run).mono
  refine ⟨fun a => ?_, by simp⟩
  cases a <;> simp

/-- Pure-proposition soundness for `OptionT.run`, generalizing `Option.of_wp_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantf8cc9abd7cc4099e5d1311a5533d8483ce3345bfaf8f03d906b79cd1963f33c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantf8cc9abd7cc4099e5d1311a5533d8483ce3345bfaf8f03d906b79cd1963f33c6.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `598884a231e51b846fe6583174a47f11bcf16e05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
