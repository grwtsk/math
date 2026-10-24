# RelCWComplex.Subcomplex.disjoint_openCell_subcomplex_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96c40cd0-c569-ade7-b8fc-bd317d8c4f48",
  "kind": "lemma",
  "lexical_name": "RelCWComplex.Subcomplex.disjoint_openCell_subcomplex_of_not_mem",
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
  "slug": "relcwcomplex-subcomplex-disjoint-opencell-subcomplex-of-not-mem--7356c1ad7f8aa5d9059e859d",
  "source": {
    "blob": "115d3f1a979d5a4939b74abf9286f1213d6fa024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7356c1ad7f8aa5d9059e859d5fd56e3da43be8aaaf33a24fe5cd9f567ea7db97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96c40cd0-c569-ade7-b8fc-bd317d8c4f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RelCWComplex.Subcomplex.disjoint_openCell_subcomplex_of_not_mem [RelCWComplex C D]
    (E : Subcomplex C) {n : ℕ} {i : cell C n} (h : i ∉ E.I n) : Disjoint (openCell n i) E := by
  simp_rw [← union, disjoint_union_right, disjoint_iUnion_right]
  exact ⟨disjointBase n i , fun _ _ ↦ disjoint_openCell_of_ne (by lia)⟩

open scoped Classical in
/-- A subcomplex is again a CW complex. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `115d3f1a979d5a4939b74abf9286f1213d6fa024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
