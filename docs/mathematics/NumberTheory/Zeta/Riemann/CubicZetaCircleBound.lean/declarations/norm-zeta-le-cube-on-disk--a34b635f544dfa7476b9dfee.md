# norm_zeta_le_cube_on_disk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6be096ab-6b9d-1045-2bed-e1283480ebd3",
  "kind": "theorem",
  "lexical_name": "norm_zeta_le_cube_on_disk",
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
  "slug": "norm-zeta-le-cube-on-disk--a34b635f544dfa7476b9dfee",
  "source": {
    "blob": "2af785df5c85605597173bcc852a24274626c1e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a34b635f544dfa7476b9dfee4fc3720f3238d3506e2c1f02349bb735ce97f071",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6be096ab-6b9d-1045-2bed-e1283480ebd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_zeta_le_cube_on_disk (N : ℕ) (hN : 2 ≤ N) (c s : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (hs : s ∈ closedBall c (3 : ℝ)) :
    ‖riemannZeta s‖ ≤ ((N : ℝ) + 2) ^ 3 := by
  obtain ⟨hr, hi, h₀, h₁, h₂⟩ := disk_geometry N hN c s hc hs
  have hne : s ≠ 1 := by
    intro he
    have hbad := hi
    rw [he] at hbad
    norm_num at hbad
  have hn : (2 : ℝ) ≤ N := by exact_mod_cast hN
  exact norm_le_cube_of_cubic_identity s (riemannZeta s) (cubicRemainder s)
    ((N : ℝ) + 2) (by linarith) (norm_inverse_sub_one_le s hi) h₀ h₁ h₂
    (norm_cubicRemainder_le_one_div_48 s hr) (zeta_eq_cubic s (by linarith) hne)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CubicZetaCircleBound.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2af785df5c85605597173bcc852a24274626c1e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
