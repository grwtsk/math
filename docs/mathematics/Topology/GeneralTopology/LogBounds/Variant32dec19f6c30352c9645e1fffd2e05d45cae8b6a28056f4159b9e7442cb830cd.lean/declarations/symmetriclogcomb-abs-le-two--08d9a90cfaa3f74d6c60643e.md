# symmetricLogComb_abs_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1d230e9-f01f-7387-0f3f-d349fcc9ea3b",
  "kind": "theorem",
  "lexical_name": "symmetricLogComb_abs_le_two",
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
  "slug": "symmetriclogcomb-abs-le-two--08d9a90cfaa3f74d6c60643e",
  "source": {
    "blob": "e23fcf52bff736a11cb9f88cef61f370d9e54480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08d9a90cfaa3f74d6c60643e1f4c269bf7afd1a5b44ac02c1e4f27dd41cfc139",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1d230e9-f01f-7387-0f3f-d349fcc9ea3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symmetricLogComb_abs_le_two (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    |symmetricLogComb t| ≤ 2 := by
  have hpos := symmetricLogComb_pos t ht_pos ht_lt
  rw [abs_of_pos hpos]
  exact symmetricLogComb_le_two t ht_pos ht_lt

/-! ## Tighter bounds via alternative form

The symmetric combination can be written as:
  g(t) = log(1-t²) / (log(1+t) · log(1-t))

Key properties:
- g(t) → 1 as t → 0⁺ (removable singularity)
- g(t) is continuous and increasing on (0, 1)
- g(1/2) ≈ 1.024

The PNT+ blueprint claims |g(t)| ≤ log(4/3)/(4/3) ≈ 0.216, but this is
clearly incorrect since g(t) → 1. The correct bound should be around 4/3.
-/

/-! ## Numerical bounds on log values -/

/-- log(3/2) ≥ 2/5. From le_log_one_add_of_nonneg with t = 1/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LogBounds/Variant32dec19f6c30352c9645e1fffd2e05d45cae8b6a28056f4159b9e7442cb830cd.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23fcf52bff736a11cb9f88cef61f370d9e54480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
