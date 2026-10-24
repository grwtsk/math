# trace_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79062669-1e4c-2d75-3573-47b1ef5a77e1",
  "kind": "theorem",
  "lexical_name": "trace_one",
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
  "slug": "trace-one--dbaf9f36b0f98a7cefcc4449",
  "source": {
    "blob": "9c5ee6a95e2c234648f4da4b64a127e2455d40c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 201,
    "path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbaf9f36b0f98a7cefcc44492bc17d16f42ebd2a92337afd37bfaac8e42e8465",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79062669-1e4c-2d75-3573-47b1ef5a77e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_one : trace R M 1 = (finrank R M : R) := by
  cases subsingleton_or_nontrivial R; simp
  have b := Module.Free.chooseBasis R M
  rw [trace_eq_matrix_trace R b, toMatrix_one, finrank_eq_card_chooseBasisIndex]
  simp
#align linear_map.trace_one LinearMap.trace_one

/-- The trace of the identity endomorphism is the dimension of the free module -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Trace/Variant71155091ec4f2302e403714bbfaa2fa1594f50e5b43cd9376d035522e5d913de.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5ee6a95e2c234648f4da4b64a127e2455d40c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
