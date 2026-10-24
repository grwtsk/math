# zeta_ne_zero_on_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bba4cb12-3f85-d06a-fc2c-10369dc15462",
  "kind": "theorem",
  "lexical_name": "zeta_ne_zero_on_left",
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
  "slug": "zeta-ne-zero-on-left--f4f20919bf301bf17c736e5f",
  "source": {
    "blob": "04450322ed067cd65d343985f2ea92c5a968c734",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4f20919bf301bf17c736e5f293618186cf7bbab3cce8ffc447fa9ba2479ae86",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bba4cb12-3f85-d06a-fc2c-10369dc15462`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_ne_zero_on_left (N : ℕ) (s : ℂ) (hs : s.re = leftEdge N) :
    riemannZeta s ≠ 0 := by
  intro hz
  rcases (zeta_zero_iff s).mp hz with hnt | ⟨k, rfl⟩
  · have hp := hnt.mem_critical_strip.1
    rw [hs] at hp
    linarith [leftEdge_neg N]
  · have hre : (trivialPoint k).re = -2 * ((k : ℝ) + 1) := by
      simp [trivialPoint]
    have he : (2 * (N : ℝ) + 1) = 2 * ((k : ℝ) + 1) := by
      rw [hre, leftEdge] at hs
      linarith
    have hi : 2 * (N : ℤ) + 1 = 2 * ((k : ℤ) + 1) := by exact_mod_cast he
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/AdmissibleRectangles.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04450322ed067cd65d343985f2ea92c5a968c734` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
