# inverse_compare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffb6a067e1db9cb6db068f5274512c12fe1f9ee6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:204d45ee-0694-34f4-c30f-d3ebdcb1699b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c12ce0c3-480c-378c-2820-1c5821860302",
  "kind": "theorem",
  "lexical_name": "inverse_compare",
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
  "slug": "inverse-compare--576db9ee4e1f42da1eda930a",
  "source": {
    "blob": "ffb6a067e1db9cb6db068f5274512c12fe1f9ee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 229,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:576db9ee4e1f42da1eda930a3a1ce0409e3bc329197a8f82d7f6c0ca551bc364",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c12ce0c3-480c-378c-2820-1c5821860302`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_compare : pkg.compare pkg' ∘ pkg'.compare pkg = id := by
  have uc := pkg.uniformContinuous_compare pkg'
  have uc' := pkg'.uniformContinuous_compare pkg
  apply pkg'.funext (uc.comp uc').continuous continuous_id
  intro a
  rw [comp_apply, pkg'.compare_coe pkg, pkg.compare_coe pkg']
  rfl

/-- The uniform bijection between two completions of the same uniform space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/AbstractCompletion/Variant574850a246966f0530668baeb4db6bb429ac977b858be60fd83bc216539ad6a1.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb6a067e1db9cb6db068f5274512c12fe1f9ee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
