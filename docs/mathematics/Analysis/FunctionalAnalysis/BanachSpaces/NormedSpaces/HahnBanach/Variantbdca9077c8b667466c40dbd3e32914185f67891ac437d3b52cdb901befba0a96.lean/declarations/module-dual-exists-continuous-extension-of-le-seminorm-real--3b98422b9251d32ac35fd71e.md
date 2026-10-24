# Module.Dual.exists_continuous_extension_of_le_seminorm_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ef4fb60f9e0361bd2c518b2c65f8996819ad14e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b4b3904-bb25-806d-c238-630873cf5445",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:735e155a-6c2f-baa0-bb4a-5b12e8408851",
  "kind": "theorem",
  "lexical_name": "Module.Dual.exists_continuous_extension_of_le_seminorm_real",
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
  "slug": "module-dual-exists-continuous-extension-of-le-seminorm-real--3b98422b9251d32ac35fd71e",
  "source": {
    "blob": "ef4fb60f9e0361bd2c518b2c65f8996819ad14e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 70,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b98422b9251d32ac35fd71e67407cfd964e6088fcd0c8883fcd8f0921e10621",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:735e155a-6c2f-baa0-bb4a-5b12e8408851`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Dual.exists_continuous_extension_of_le_seminorm_real
    [Module ℝ E] [PolynormableSpace ℝ E] (S : Subspace ℝ E) (f : Dual ℝ S)
    {p : Seminorm ℝ E} (hp_cont : Continuous p) (hp : ∀ x, f x ≤ p x) :
    ∃ g : StrongDual ℝ E, (∀ x : S, g x = f x) ∧ ∀ x, |g x| ≤ p x := by
  obtain ⟨g, hg, hl⟩ := f.exists_extension_of_le_seminorm_real S hp
  exact ⟨⟨g, (PolynormableSpace.withSeminorms ℝ E).continuous_real_rng g
    ⟨{⟨p, hp_cont⟩}, 1, fun x ↦ by simpa using (le_abs_self _).trans (hl x)⟩⟩, hg, hl⟩

variable [Module 𝕜 E] [PolynormableSpace 𝕜 E]

/-- **Hahn-Banach theorem** for linear functionals dominated by a continuous seminorm on
polynormable spaces over fields satisfying `IsRCLikeNormedField`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variantbdca9077c8b667466c40dbd3e32914185f67891ac437d3b52cdb901befba0a96.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef4fb60f9e0361bd2c518b2c65f8996819ad14e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
