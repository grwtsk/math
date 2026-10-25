# OptionT.of_wp_run

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67bcb666-565f-5a61-3b15-3463d16f469d",
  "kind": "theorem",
  "lexical_name": "OptionT.of_wp_run",
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
  "slug": "optiont-of-wp-run--b05bb9c0abdd45d4efb8440f",
  "source": {
    "blob": "598884a231e51b846fe6583174a47f11bcf16e05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 264,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantf8cc9abd7cc4099e5d1311a5533d8483ce3345bfaf8f03d906b79cd1963f33c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b05bb9c0abdd45d4efb8440fec0e346aa2c55aef1314b43eb179f6e32830336c",
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

Occurrence: `result:67bcb666-565f-5a61-3b15-3463d16f469d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem OptionT.of_wp_run
    [Monad m] [LawfulMonad m] [WP m .pure] [WPSound m .pure]
    [MonadAttach m] [LawfulMonadAttach m]
    {α : Type u} {prog : OptionT m α} {x : Option α} (P : Option α → Prop)
    (hcan : MonadAttach.CanReturn prog.run x)
    (hwp : ⊢ₛ wp⟦prog⟧ post⟨fun a => ⌜P (some a)⌝, fun _ => ⌜P none⌝⟩) : P x :=
  (Internal.MayReturn.of_canReturn hcan).imp (OptionT.ensures_of_wp_run P hwp)

/-- Soundness lemma for `Option`: `Id`-specialization of `OptionT.of_wp_run`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantf8cc9abd7cc4099e5d1311a5533d8483ce3345bfaf8f03d906b79cd1963f33c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sound/Variantf8cc9abd7cc4099e5d1311a5533d8483ce3345bfaf8f03d906b79cd1963f33c6.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `598884a231e51b846fe6583174a47f11bcf16e05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
