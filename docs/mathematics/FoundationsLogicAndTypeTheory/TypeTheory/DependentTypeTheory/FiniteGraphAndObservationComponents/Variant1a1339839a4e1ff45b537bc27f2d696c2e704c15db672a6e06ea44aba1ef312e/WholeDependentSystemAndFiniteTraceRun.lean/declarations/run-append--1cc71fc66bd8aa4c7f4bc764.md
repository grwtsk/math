# run_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb59fa80-8d84-66be-30db-328e28ac89b8",
  "kind": "theorem",
  "lexical_name": "run_append",
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
  "slug": "run-append--1cc71fc66bd8aa4c7f4bc764",
  "source": {
    "blob": "9c27c69eae412cd83d9f86ea206022347d806641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cc71fc66bd8aa4c7f4bc764eeff8e44f3165afdbbac9d6de155de43834c4bdf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb59fa80-8d84-66be-30db-328e28ac89b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem run_append
    (M : System Input State Resolution)
    (first second : List Input)
    (state : State) :
    M.run (first ++ second) state =
      M.run second (M.run first state) := by
  induction first generalizing state with
  | nil => rfl
  | cons input rest ih =>
      simp only [List.cons_append, run_cons]
      exact ih (M.step input state)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/FiniteGraphAndObservationComponents/Variant1a1339839a4e1ff45b537bc27f2d696c2e704c15db672a6e06ea44aba1ef312e/WholeDependentSystemAndFiniteTraceRun.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c27c69eae412cd83d9f86ea206022347d806641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
