# starConvex_compl_Iic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12b2331e-c88a-0af3-28db-932f276f55ed",
  "kind": "lemma",
  "lexical_name": "starConvex_compl_Iic",
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
  "slug": "starconvex-compl-iic--4a0e9f10aa1662cbcca3aef8",
  "source": {
    "blob": "1651311c8511dbaa38a39efc43096f0b13dc866b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 373,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a0e9f10aa1662cbcca3aef8f79a222df322b97525aca3f7b8a690a01abf495a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12b2331e-c88a-0af3-28db-932f276f55ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma starConvex_compl_Iic (h : x < y) : StarConvex 𝕜 y (Iic x)ᶜ := by
  refine (starConvex_iff_forall_pos <| by simp [h.not_le]).mpr fun z hz a b ha hb hab ↦ ?_
  rw [mem_compl_iff, mem_Iic] at hz ⊢
  contrapose! hz
  refine (lt_of_smul_lt_smul_of_nonneg_left ?_ hb.le).le
  calc
    b • z ≤ (a + b) • x - a • y := by rwa [le_sub_iff_add_le', hab, one_smul]
    _ < b • x := by
      rw [add_smul, sub_lt_iff_lt_add']
      gcongr

/-- If `x < y`, then `(Set.Ici y)ᶜ` is star convex at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Star/Variant40785cb005ee89f5bb008545fa58613bc6830700a9c7fdd06051e65430223196.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1651311c8511dbaa38a39efc43096f0b13dc866b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
