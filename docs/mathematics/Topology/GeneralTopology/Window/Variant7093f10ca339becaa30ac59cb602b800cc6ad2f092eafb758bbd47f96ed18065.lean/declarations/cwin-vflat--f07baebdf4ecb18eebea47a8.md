# cWin_vFlat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3240db6-a645-559c-4f90-5390193499bb",
  "kind": "theorem",
  "lexical_name": "cWin_vFlat",
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
  "slug": "cwin-vflat--f07baebdf4ecb18eebea47a8",
  "source": {
    "blob": "63abccc96d115cf966dcf2f3551c9d99877e0ac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 226,
    "path": "GRWTSK/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f07baebdf4ecb18eebea47a81e12a4c3cbc6b93ca54328fe532b4408e5562d4e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3240db6-a645-559c-4f90-5390193499bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cWin_vFlat (D : ℝ → ℝ) (lam : ℝ) : cWin D lam vFlat = lam / (1 + lam * jWin D lam vFlat) := by
  unfold cWin; rw [integral_vFlat, integral_vFlat_sq]; ring

/-- κ₁(λ, flat) = 1/λ + 2∫₀¹ D₁(λr)(1−r) dr  (the ζ analogue is Zeta23.kfun λ = 1/λ + λ/3). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Window/Variant7093f10ca339becaa30ac59cb602b800cc6ad2f092eafb758bbd47f96ed18065.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63abccc96d115cf966dcf2f3551c9d99877e0ac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
