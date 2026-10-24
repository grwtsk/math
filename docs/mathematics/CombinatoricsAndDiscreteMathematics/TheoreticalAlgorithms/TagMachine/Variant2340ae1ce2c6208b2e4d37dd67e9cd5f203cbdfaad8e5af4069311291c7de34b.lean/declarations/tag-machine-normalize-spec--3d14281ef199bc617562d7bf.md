# tag_machine_normalize_spec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:07d617d5-6c0c-8de3-82fd-4f114d7c39f3",
  "kind": "theorem",
  "lexical_name": "tag_machine_normalize_spec",
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
  "slug": "tag-machine-normalize-spec--3d14281ef199bc617562d7bf",
  "source": {
    "blob": "7a241ae64bf6bcd9943445e09793d7814c8989d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d14281ef199bc617562d7bfabe8793ec11a304296ade760ca13c5c37ee83b28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07d617d5-6c0c-8de3-82fd-4f114d7c39f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tag_machine_normalize_spec (tag : ConstructorId) (state : TagMachineState) :
    ∃ n, Trace (TagMachineStep tag) n state (tagMachineNormalize tag state) ∧
      ∀ result, ¬TagMachineStep tag (tagMachineNormalize tag state) result := by
  obtain ⟨n, trace, normal⟩ := tag_normalize_spec tag state.term
  refine ⟨state.pending + 2 * n,
    (tag_machine_discharge tag state.term state.pending).trans (tag_machine_lift_trace trace), ?_⟩
  intro result step
  cases step with
  | computational step => exact normal _ step

/-- Normalizing the machine preserves the original source typing contract. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TagMachine/Variant2340ae1ce2c6208b2e4d37dd67e9cd5f203cbdfaad8e5af4069311291c7de34b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a241ae64bf6bcd9943445e09793d7814c8989d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
