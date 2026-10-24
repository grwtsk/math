# tendsto_a_flat

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
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ecdb426-31df-4bcb-4539-f69144ff7d3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:530684ea-609f-30a0-1605-5cf9a1982dd6",
  "kind": "theorem",
  "lexical_name": "tendsto_a_flat",
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
  "slug": "tendsto-a-flat--ffaa61fd7595b51168161d04",
  "source": {
    "blob": "335299492dfbf25c3a74e8acfbe583f84ebb2a9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 230,
    "path": "GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffaa61fd7595b51168161d04f4935fcdc82eaa9d4c8779aa1ad443370781dde4",
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

Occurrence: `result:530684ea-609f-30a0-1605-5cf9a1982dd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_a_flat (hP : P.Valid) :
    Tendsto (fun T => P.a T) atTop (𝓝 (∫ s in (-(1:ℝ)/2)..(1/2), vFlat s)) := by
  rw [integral_vFlat]
  apply ThmD.tendsto_of_close hP.lam_pos (C := 2)
  filter_upwards [eventually_w8 hP] with T hT
  have h1 := Params.a_le_one hP hT
  have h2 := Params.one_sub_le_b hP hT
  have h3 := Params.b_le_a hP hT
  rw [abs_sub_comm, abs_of_nonneg (by linarith)]
  linarith

/-- b_T → 1 = ∫ vFlat² for the flat taper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Window/Variantd455f896d75979c3439d1bf356dc0e7ea39be9a6bcde4d82e2692bc633dd019e.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `335299492dfbf25c3a74e8acfbe583f84ebb2a9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
