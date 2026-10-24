# correctedRieszSourceDefect_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6754a3a-3897-0a08-4c03-f586370dc20e",
  "kind": "theorem",
  "lexical_name": "correctedRieszSourceDefect_affine",
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
  "slug": "correctedrieszsourcedefect-affine--4a1ecd9c5c8961d5c903c5c8",
  "source": {
    "blob": "2c162633e0f9251c3724b11a7454aeaebc60bbff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a1ecd9c5c8961d5c903c5c810d975d666b5471a8b10b7fb6317f2cfd15d5b47",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6754a3a-3897-0a08-4c03-f586370dc20e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedRieszSourceDefect_affine (N : ℕ) (a x : ℝ)
    (ha : 1 < a) (ha2 : a ≤ 2) (hN : 3 ≤ N) (hax : a ≤ x) (hxN : x ≤ N) :
    correctedRieszSourceDefect N a x = correctedRieszSourceDefect N a 2 +
      ((x - 2 : ℝ) : ℂ) *
        (correctedRieszSourceDefect N a 3 - correctedRieszSourceDefect N a 2) := by
  have hNR : (3 : ℝ) ≤ N := by exact_mod_cast hN
  apply affine_from_two (correctedRieszSourceDefect N a) a N (by linarith)
    (correctedRieszSourceDefect_continuousOn N a ha (by linarith)) ?_
    ⟨ha2, by linarith⟩ ⟨by linarith, hNR⟩ x ⟨hax, hxN⟩
  intro u hu v hv huv
  exact correctedRieszSourceDefect_midpoint N a u v ha hu.1 huv hv.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/GlobalRieszAffineNormalization.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c162633e0f9251c3724b11a7454aeaebc60bbff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
