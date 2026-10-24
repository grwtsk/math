# mem_boxFinset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0cd0c119-1d08-536d-76a9-ba961d61fc46",
  "kind": "theorem",
  "lexical_name": "mem_boxFinset",
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
  "slug": "mem-boxfinset--2d196362d815f2dc94c8ff18",
  "source": {
    "blob": "40126fd7a4b454d8ed53c36324dde81ea8d5fc94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d196362d815f2dc94c8ff182a1c8d0e0f132035302f6c56b3efe42a48e44021",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cd0c119-1d08-536d-76a9-ba961d61fc46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_boxFinset {d : ℕ} {p : Parameters d} {q : Point d} :
    q ∈ boxFinset p ↔
      (∀ i, ClosedDyadic (q.1 i) (p.A i)) ∧
      (∀ i, ClosedDyadic (q.2.1 i) (p.B i)) ∧
      (∀ i, ClosedDyadic (q.2.2 i) (p.C i)) ∧
      0 < p.totalA q.1 ∧
      0 < p.totalB q.2.1 ∧
      0 < p.totalC q.2.2 ∧
      p.totalA q.1 + p.totalB q.2.1 = p.totalC q.2.2 ∧
      SupportPrimitive p q := by
  simp [boxFinset, and_assoc]

/-- The finite box count `B_d`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/AnatomicBoxes.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40126fd7a4b454d8ed53c36324dde81ea8d5fc94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
