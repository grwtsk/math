# injective_noncommPiCoprod_of_iSupIndep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18fb0c54-b8ed-b70d-26d4-d989c660ad91",
  "kind": "theorem",
  "lexical_name": "injective_noncommPiCoprod_of_iSupIndep",
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
  "slug": "injective-noncommpicoprod-of-isupindep--99ec6e6b0d318a6f9ad98d88",
  "source": {
    "blob": "7a1adb76c984422a5c18d14d27fc2d55f7e88408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 243,
    "path": "GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99ec6e6b0d318a6f9ad98d881baf7d71c74fe8c31735c5e8a8bbbbf34d439c02",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18fb0c54-b8ed-b70d-26d4-d989c660ad91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_noncommPiCoprod_of_iSupIndep [Fintype ι]
    {hcomm : Pairwise fun i j : ι => ∀ (x : H i) (y : H j), Commute (ϕ i x) (ϕ j y)}
    (hind : iSupIndep fun i => (ϕ i).range)
    (hinj : ∀ i, Function.Injective (ϕ i)) : Function.Injective (noncommPiCoprod ϕ hcomm) := by
  apply (MonoidHom.ker_eq_bot_iff _).mp
  rw [eq_bot_iff]
  intro f heq1
  have : ∀ i, i ∈ Finset.univ → ϕ i (f i) = 1 :=
    Subgroup.eq_one_of_noncommProd_eq_one_of_iSupIndep _ _ (fun _ _ _ _ h => hcomm h _ _)
      _ hind (by simp) heq1
  ext i
  apply hinj
  simp [this i (Finset.mem_univ i)]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/NoncommPiCoprod/Variant3c0a1e7c358539c723b68c5463cc6e3ba8d26b593d5b6bed98c1fdc7616a521e.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a1adb76c984422a5c18d14d27fc2d55f7e88408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
