# apexRelated_equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a462cac-35be-b599-424f-636d87e8a5ab",
  "kind": "theorem",
  "lexical_name": "apexRelated_equivalence",
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
  "slug": "apexrelated-equivalence--aac9bc4646a163c3ae4684f2",
  "source": {
    "blob": "81daebd6935c95c96d8d3f45fe702e009ae96b96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 39,
    "path": "GRWTSK/Topology/AlgebraicTopology/CircleConeDiskComparison.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aac9bc4646a163c3ae4684f27c353a41f480ce1471da1d6a130b588639971ad6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a462cac-35be-b599-424f-636d87e8a5ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem apexRelated_equivalence : Equivalence ApexRelated := by
  constructor
  · intro x
    exact Or.inl rfl
  · intro x y h
    rcases h with h | h
    · exact Or.inl h.symm
    · exact Or.inr ⟨h.2, h.1⟩
  · intro x y z hxy hyz
    rcases hxy with hxy | hxy
    · simpa [hxy] using hyz
    rcases hyz with hyz | hyz
    · simpa [← hyz] using (Or.inr hxy : ApexRelated x y)
    · exact Or.inr ⟨hxy.1, hyz.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/CircleConeDiskComparison.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/CircleConeDiskComparison.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81daebd6935c95c96d8d3f45fe702e009ae96b96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
