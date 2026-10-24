# Module.Dual.exists_continuous_extension_of_le_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9dc06d8-817e-9b5f-31ff-84bf47856e57",
  "kind": "theorem",
  "lexical_name": "Module.Dual.exists_continuous_extension_of_le_seminorm",
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
  "slug": "module-dual-exists-continuous-extension-of-le-seminorm--ae31e91b793888920c914cf1",
  "source": {
    "blob": "b1e72020b085ee1f0b124f3a17d161e48d60c814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 90,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variant510d4312288159b8e2c281b312a76d40317b0930e867c4eff423a7f2ad4393c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae31e91b793888920c914cf1587e39130919d2dc9e8f5afd1efe4fe375f74ca5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variant510d4312288159b8e2c281b312a76d40317b0930e867c4eff423a7f2ad4393c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9dc06d8-817e-9b5f-31ff-84bf47856e57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Dual.exists_continuous_extension_of_le_seminorm (S : Submodule 𝕜 E) (f : Dual 𝕜 S)
    {p : Seminorm 𝕜 E} (hp_cont : Continuous p) (hp : ∀ x, ‖f x‖ ≤ p x) :
    ∃ g : StrongDual 𝕜 E, (∀ x : S, g x = f x) ∧ ∀ x, ‖g x‖ ≤ p x := by
  obtain ⟨g, hg, hle⟩ := Dual.exists_extension_of_le_seminorm S f hp
  refine ⟨⟨g, (PolynormableSpace.withSeminorms 𝕜 E).continuous_normedSpace_rng 𝕜 g ?_⟩, hg, hle⟩
  exact ⟨{⟨p, hp_cont⟩}, 1, by simpa⟩

/-- **Hahn-Banach theorem** for continuous linear functionals on polynormable spaces over a field
satisfying `IsRCLikeNormedField`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variant510d4312288159b8e2c281b312a76d40317b0930e867c4eff423a7f2ad4393c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variant510d4312288159b8e2c281b312a76d40317b0930e867c4eff423a7f2ad4393c0.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e72020b085ee1f0b124f3a17d161e48d60c814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
