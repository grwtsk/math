# Predictable.adapted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e785972307b22b73f3ff239abfa030d19d5a3dbe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dd784ceb-45fa-c07e-70a6-25558612450d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73d0f626-3eb8-6248-b5cc-f97a1621be30",
  "kind": "theorem",
  "lexical_name": "Predictable.adapted",
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
  "slug": "predictable-adapted--2f865b83da9e4e09d1074615",
  "source": {
    "blob": "e785972307b22b73f3ff239abfa030d19d5a3dbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f865b83da9e4e09d107461569385a7c223de8bd7949b9a467eeaff2411bd081",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d0f626-3eb8-6248-b5cc-f97a1621be30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Predictable.adapted {f : Filtration ℕ m} {u : ℕ → Ω → β} (hu : Adapted f fun n => u (n + 1))
    (hu0 : StronglyMeasurable[f 0] (u 0)) : Adapted f u := fun n =>
  match n with
  | 0 => hu0
  | n + 1 => (hu n).mono (f.mono n.le_succ)

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Adapted/Variant24688a84af833a6d87e14e4c59deee0c746ac06cbb2e3167a6e2fac51f1ee283.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e785972307b22b73f3ff239abfa030d19d5a3dbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
