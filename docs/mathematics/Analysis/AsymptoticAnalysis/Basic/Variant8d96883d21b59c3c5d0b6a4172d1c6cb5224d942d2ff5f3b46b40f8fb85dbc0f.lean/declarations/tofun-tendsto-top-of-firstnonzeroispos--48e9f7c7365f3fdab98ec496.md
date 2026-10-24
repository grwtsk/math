# toFun_tendsto_top_of_firstNonzeroIsPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "272556eb3ae07bfdf78b85b84fb98e02043967c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 281,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6abf213-5271-9391-c524-24847a7a9d19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a25f9bac-7f59-2b9c-9b20-b49aca9a8458",
  "kind": "theorem",
  "lexical_name": "toFun_tendsto_top_of_firstNonzeroIsPos",
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
  "slug": "tofun-tendsto-top-of-firstnonzeroispos--48e9f7c7365f3fdab98ec496",
  "source": {
    "blob": "272556eb3ae07bfdf78b85b84fb98e02043967c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 281,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e9f7c7365f3fdab98ec496c4033ca92e8911ff43d4e9390c890d81e1b19a98",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a25f9bac-7f59-2b9c-9b20-b49aca9a8458`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFun_tendsto_top_of_firstNonzeroIsPos {m : UnitMonomial} {basis : Basis}
    (h_basis : WellFormedBasis basis) (h_length : m.length = basis.length)
    (h_firstIsPos : FirstNonzeroIsPos m) :
    Tendsto (UnitMonomial.toFun m basis) atTop atTop := by
  cases m with
  | nil => simp at h_firstIsPos
  | cons exps_hd exps_tl =>
    cases basis with
    | nil => simp at h_length
    | cons basis_hd basis_tl =>
      simp only [FirstNonzeroIsPos.cons_iff] at h_firstIsPos
      obtain h | h := h_firstIsPos
      · exact toFun_tendsto_top_of_head_pos h_basis h
      · have h_eq : UnitMonomial.toFun (exps_hd :: exps_tl) (basis_hd :: basis_tl) =
                    UnitMonomial.toFun exps_tl basis_tl := by
          ext x; simp [UnitMonomial.toFun, h.left]
        rw [h_eq]
        exact toFun_tendsto_top_of_firstNonzeroIsPos h_basis.tail (by simpa using h_length) h.right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant8d96883d21b59c3c5d0b6a4172d1c6cb5224d942d2ff5f3b46b40f8fb85dbc0f.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `272556eb3ae07bfdf78b85b84fb98e02043967c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
