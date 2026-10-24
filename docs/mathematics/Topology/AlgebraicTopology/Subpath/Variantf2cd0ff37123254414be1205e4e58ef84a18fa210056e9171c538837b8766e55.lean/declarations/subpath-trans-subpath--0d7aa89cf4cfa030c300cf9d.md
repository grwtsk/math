# subpath_trans_subpath

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12b384ca-084e-d62f-45e4-60c8d59f26ea",
  "kind": "theorem",
  "lexical_name": "subpath_trans_subpath",
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
  "slug": "subpath-trans-subpath--0d7aa89cf4cfa030c300cf9d",
  "source": {
    "blob": "141421bd63b7b13f549312e61bab9cff0228a5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 236,
    "path": "GRWTSK/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d7aa89cf4cfa030c300cf9d290525999987cf11dbcc564b175ecfe8564f93e3",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12b384ca-084e-d62f-45e4-60c8d59f26ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subpath_trans_subpath (γ : Path a b) (s t u : I) :
    Homotopic ((γ.subpath s t).trans (γ.subpath t u)) (γ.subpath s u) :=
  ⟨Homotopy.subpathTransSubpath γ s t u⟩

/-- Composition of consecutive subpath classes is the class of the subpath between their outer
endpoints. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Subpath/Variantf2cd0ff37123254414be1205e4e58ef84a18fa210056e9171c538837b8766e55.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `141421bd63b7b13f549312e61bab9cff0228a5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
