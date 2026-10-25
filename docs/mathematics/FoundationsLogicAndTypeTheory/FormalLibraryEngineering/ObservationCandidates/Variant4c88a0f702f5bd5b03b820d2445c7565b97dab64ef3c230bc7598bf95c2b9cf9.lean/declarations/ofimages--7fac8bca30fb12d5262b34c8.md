# ofImages

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ead5305ff0f5b030793454a90caf2aba8e295919f1b92873f41e55f5ff8aa289",
  "kind": "def",
  "lexical_name": "ofImages",
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
  "slug": "ofimages--7fac8bca30fb12d5262b34c8",
  "source": {
    "blob": "12ceeb097e6d1a7c7eeb506bb943bf21c9570978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fac8bca30fb12d5262b34c82472acffdc1cdc61b5a16695f8b742ee991ba52d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ead5305ff0f5b030793454a90caf2aba8e295919f1b92873f41e55f5ff8aa289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ofImages {Γ : List (Expr S)} (σ : Nat → Expr S)
    (hσ : Ω.TypedSubstitution Γ σ) : Environment (hw := hw) Ω C hno Γ where
  images := σ
  typed := hσ
  parameters := fun i => if hi : ∃ A, Lookup Γ i A then
    (PayloadFits.exists_of_actual (hno := hno) ⟨_,(hσ _ _ hi.choose_spec).actual_type
      hw⟩).choose else none
  lawful := by
    intro i A hi
    simp only [dif_pos (show ∃ B, Lookup Γ i B from ⟨A,hi⟩)]
    have he := Lookup.unique (show Lookup Γ i (Exists.choose (show ∃ B, Lookup Γ i B from ⟨A,
      hi⟩)) from
      (show ∃ B, Lookup Γ i B from ⟨A,hi⟩).choose_spec) hi
    simpa only [he] using (PayloadFits.exists_of_actual (hno := hno)
      ⟨_,(hσ _ _ (show ∃ B, Lookup Γ i B from ⟨A,hi⟩).choose_spec).actual_type hw⟩).choose_spec

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ObservationCandidates/Variant4c88a0f702f5bd5b03b820d2445c7565b97dab64ef3c230bc7598bf95c2b9cf9.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ceeb097e6d1a7c7eeb506bb943bf21c9570978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
