# finite_of_isNoetherian_or_isArtinian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15f8462c-8596-150e-582b-e2e069e6c936",
  "kind": "theorem",
  "lexical_name": "finite_of_isNoetherian_or_isArtinian",
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
  "slug": "finite-of-isnoetherian-or-isartinian--2b2536824b962f003624d234",
  "source": {
    "blob": "92bafdef8e2b44b9c55da9705d47d054d3ea0313",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 83,
    "path": "GRWTSK/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b2536824b962f003624d2342176188a0a4c031618994a75a57a92b60ed1a6bc",
  "verification": {
    "reference": "docs/verification/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15f8462c-8596-150e-582b-e2e069e6c936`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem finite_of_isNoetherian_or_isArtinian :
    IsNoetherian R M ∨ IsArtinian R M → Module.Finite R₀ M := by
  refine IsSemiprimaryRing.induction R₀ R M (P := fun M ↦ IsNoetherian R M ∨ IsArtinian R M →
    Module.Finite R₀ M) (fun M _ _ _ _ _ hJ h ↦ ?_) (fun M _ _ _ _ hs hq h ↦ ?_)
  · let _ := hJ.module
    have := IsSemisimpleModule.finite_tfae (R := R) (M := M)
    simp_rw [this.out 1 0, this.out 2 0, or_self,
      hJ.semilinearMap.finite_iff_of_bijective Function.bijective_id] at h
    exact .trans (R ⧸ Ring.jacobson R) M
  · let N := (Ring.jacobson R • ⊤ : Submodule R M).restrictScalars R₀
    have : Module.Finite R₀ N := by refine hs (h.imp ?_ ?_) <;> (intro; infer_instance)
    have : Module.Finite R₀ (M ⧸ N) := by refine hq (h.imp ?_ ?_) <;> (intro; infer_instance)
    exact .of_submodule_quotient N

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92bafdef8e2b44b9c55da9705d47d054d3ea0313` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
