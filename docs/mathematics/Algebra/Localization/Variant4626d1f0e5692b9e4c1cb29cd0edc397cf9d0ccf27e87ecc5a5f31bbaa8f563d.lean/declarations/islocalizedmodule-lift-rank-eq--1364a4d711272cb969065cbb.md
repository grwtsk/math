# IsLocalizedModule.lift_rank_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a438d5a0-2c70-61bb-78b6-820d5ce903ba",
  "kind": "lemma",
  "lexical_name": "IsLocalizedModule.lift_rank_eq",
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
  "slug": "islocalizedmodule-lift-rank-eq--1364a4d711272cb969065cbb",
  "source": {
    "blob": "a4b6334ddb351d490a462226043d9218842e47b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1364a4d711272cb969065cbb7b0884a260c17688869093844ed8fd4334fcf9fb",
  "verification": {
    "reference": "docs/verification/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a438d5a0-2c70-61bb-78b6-820d5ce903ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalizedModule.lift_rank_eq :
    Cardinal.lift.{uM} (Module.rank R N) = Cardinal.lift.{uN} (Module.rank R M) := by
  cases subsingleton_or_nontrivial R
  · simp only [rank_subsingleton, lift_one]
  apply le_antisymm <;>
    rw [Module.rank_def, lift_iSup (bddAbove_range _)] <;>
    apply ciSup_le' <;>
    intro ⟨s, hs⟩
  exacts [(IsLocalizedModule.linearIndependent_lift p f hs).choose_spec.cardinal_lift_le_rank,
    hs.of_isLocalizedModule_of_isRegular p f (le_nonZeroDivisors_iff_isRegular.mp hp)
      |>.cardinal_lift_le_rank]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Localization/Variant4626d1f0e5692b9e4c1cb29cd0edc397cf9d0ccf27e87ecc5a5f31bbaa8f563d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4b6334ddb351d490a462226043d9218842e47b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
