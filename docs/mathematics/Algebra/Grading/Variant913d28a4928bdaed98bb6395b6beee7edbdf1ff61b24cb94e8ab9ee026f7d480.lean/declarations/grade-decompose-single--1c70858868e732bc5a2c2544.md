# grade.decompose_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac4500e8-8e1a-133d-7a00-b1ab2d248e1c",
  "kind": "theorem",
  "lexical_name": "grade.decompose_single",
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
  "slug": "grade-decompose-single--1c70858868e732bc5a2c2544",
  "source": {
    "blob": "6c542b81793c299ba8a0acac2ba5efa87d3b3e07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 182,
    "path": "GRWTSK/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c70858868e732bc5a2c2544b56e90c41e7e42ced394dd58ee0fbd1f63a7c59d",
  "verification": {
    "reference": "docs/verification/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac4500e8-8e1a-133d-7a00-b1ab2d248e1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem grade.decompose_single (i : ι) (r : R) :
    DirectSum.decompose (grade R : ι → Submodule _ _) (single i r) =
      .of (fun i ↦ grade R i) i ⟨single i r, single_mem_grade _ _⟩ :=
  decomposeAux_single _ _ _

/-- `AddMonoidAlgebra.gradeBy` describe an internally graded algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Grading/Variant913d28a4928bdaed98bb6395b6beee7edbdf1ff61b24cb94e8ab9ee026f7d480.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c542b81793c299ba8a0acac2ba5efa87d3b3e07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
