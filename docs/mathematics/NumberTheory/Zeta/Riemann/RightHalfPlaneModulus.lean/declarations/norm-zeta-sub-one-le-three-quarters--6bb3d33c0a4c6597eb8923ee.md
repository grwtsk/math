# norm_zeta_sub_one_le_three_quarters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41e631b5-0e92-e20b-80f3-61f190cf0cba",
  "kind": "theorem",
  "lexical_name": "norm_zeta_sub_one_le_three_quarters",
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
  "slug": "norm-zeta-sub-one-le-three-quarters--6bb3d33c0a4c6597eb8923ee",
  "source": {
    "blob": "b642c3ecd1f44223527afc00b57aec3324b06fc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bb3d33c0a4c6597eb8923ee14c8dc43b8d4f922ae7e1e9ef2863170a6407c66",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e631b5-0e92-e20b-80f3-61f190cf0cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_zeta_sub_one_le_three_quarters (s : ℂ) (hs : 2 ≤ s.re) :
    ‖riemannZeta s - 1‖ ≤ (3 / 4 : ℝ) := by
  have hfirst : ‖1 / (2 : ℂ) ^ s‖ ≤ (1 / 4 : ℝ) := by
    convert norm_reciprocal_cpow_le_square 2 (by norm_num) s hs using 1 <;> norm_num
  have htail : ‖∑' k : ℕ, 1 / ((k : ℂ) + 3) ^ s‖ ≤ (1 / 2 : ℝ) := by
    convert norm_tsum_reciprocal_cpow_tail_le s hs 3 (by norm_num) using 1 <;> norm_num
  have he : riemannZeta s - 1 = 1 / (2 : ℂ) ^ s +
      ∑' k : ℕ, 1 / ((k : ℂ) + 3) ^ s := by
    rw [zeta_eq_one_add_two_add_tail s (by linarith)]
    ring
  rw [he]
  exact (norm_add_le _ _).trans (by linarith)

/-- The same rational floor works for every imaginary height in Re(s)>=2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/RightHalfPlaneModulus.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b642c3ecd1f44223527afc00b57aec3324b06fc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
