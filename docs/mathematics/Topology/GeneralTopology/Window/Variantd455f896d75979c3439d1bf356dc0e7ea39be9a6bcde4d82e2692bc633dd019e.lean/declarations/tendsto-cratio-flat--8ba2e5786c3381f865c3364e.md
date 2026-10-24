# tendsto_cRatio_flat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "335299492dfbf25c3a74e8acfbe583f84ebb2a9a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71c3972e-af47-1b05-88c0-418451c74615",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e047c82-af5d-9437-269e-12abde2a121f",
  "kind": "theorem",
  "lexical_name": "tendsto_cRatio_flat",
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
  "slug": "tendsto-cratio-flat--8ba2e5786c3381f865c3364e",
  "source": {
    "blob": "335299492dfbf25c3a74e8acfbe583f84ebb2a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 281,
    "path": "GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba2e5786c3381f865c3364ef9818971455424844a7a9787c3a82f5df7a84dae",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e047c82-af5d-9437-269e-12abde2a121f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_cRatio_flat (hP : P.Valid) {D : ℝ → ℝ} (hD : ContinuousOn D (Icc 0 1))
    (hD0 : ∀ x ∈ Icc (0:ℝ) 1, 0 ≤ D x) :
    Tendsto (fun T => ThmD.cRatio (P.lam1 T) (P.a T) (P.b T)
      (2 / P.L T ^ 3 * l T * ∫ y in (0:ℝ)..P.L T, (D (y / l T) * P.g T y))) atTop
      (𝓝 (cWin D P.lam vFlat)) := by
  refine tendsto_cRatio_cWin hP.lam_pos (ThmD.tendsto_lam1 hP.lam_pos) (tendsto_a_flat hP)
    (tendsto_b_flat hP) (tendsto_JT_flat hP hD) ?_
  rw [integral_vFlat_sq]
  have := jWin_nonneg (v := vFlat) hD0 (fun s _ => by simp [vFlat]) hP.lam_pos.le hP.lam_le_one
  have := mul_nonneg hP.lam_pos.le this
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335299492dfbf25c3a74e8acfbe583f84ebb2a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
