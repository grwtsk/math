# all_windows_of_above_eleven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e0fe216-9f0e-80eb-594f-0650e594cf5a",
  "kind": "theorem",
  "lexical_name": "all_windows_of_above_eleven",
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
  "slug": "all-windows-of-above-eleven--c4a13c2c246e8a7ad9178e29",
  "source": {
    "blob": "73bfb3df3acd33a26689a28edb1bbfe2c80d40a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 223,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4a13c2c246e8a7ad9178e29c1713cfc04340aea99b9a26e98849a93d0280a90",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e0fe216-9f0e-80eb-594f-0650e594cf5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_windows_of_above_eleven
    (hstep : ∀ N : ℕ, 11 ≤ N → WindowRH N → ShellRH N) : ∀ N : ℕ, WindowRH N := by
  intro N
  induction N with
  | zero => exact windowRH_mono windowRH_eleven (by decide)
  | succ N ih =>
    by_cases hs : N+1 ≤ 11
    · exact windowRH_mono windowRH_eleven hs
    · exact (window_succ_iff N).mpr ⟨ih,hstep N (by omega) ih⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripElevenHeightSeed.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bfb3df3acd33a26689a28edb1bbfe2c80d40a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
