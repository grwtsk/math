# Module.Dual.exists_extension_of_le_seminorm_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f773e51-15bd-2010-653b-a3fb53ccef7b",
  "kind": "theorem",
  "lexical_name": "Module.Dual.exists_extension_of_le_seminorm_real",
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
  "slug": "module-dual-exists-extension-of-le-seminorm-real--0d4dc57bcc7c23f5cd12012d",
  "source": {
    "blob": "b1e72020b085ee1f0b124f3a17d161e48d60c814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variant510d4312288159b8e2c281b312a76d40317b0930e867c4eff423a7f2ad4393c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d4dc57bcc7c23f5cd12012d3a6461645fbf09bc48494bd389623e5e51806891",
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

Occurrence: `result:7f773e51-15bd-2010-653b-a3fb53ccef7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Module.Dual.exists_extension_of_le_seminorm_real [Module ℝ E]
    (S : Subspace ℝ E) (f : Dual ℝ S)
    {p : Seminorm ℝ E} (hp : ∀ x, f x ≤ p x) :
    ∃ g : Dual ℝ E, (∀ x : S, g x = f x) ∧ ∀ x, |g x| ≤ p x := by
  obtain ⟨g, hg, hl⟩ := by
    refine exists_extension_of_le_sublinear ⟨S, f⟩ p (fun _ hc _ => ?_) ?_ hp
    · simp [map_smul_eq_mul, abs_of_nonneg hc.le]
    · exact fun x y => map_add_le_add p x y
  exact ⟨g, hg, p.abs_le_of_le hl⟩

variable [NormedField 𝕜] [IsRCLikeNormedField 𝕜]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variant510d4312288159b8e2c281b312a76d40317b0930e867c4eff423a7f2ad4393c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HahnBanach/Variant510d4312288159b8e2c281b312a76d40317b0930e867c4eff423a7f2ad4393c0.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e72020b085ee1f0b124f3a17d161e48d60c814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
