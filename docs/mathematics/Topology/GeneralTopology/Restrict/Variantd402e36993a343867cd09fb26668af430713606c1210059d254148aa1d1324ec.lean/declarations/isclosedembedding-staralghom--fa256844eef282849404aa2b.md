# isClosedEmbedding_starAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08fa9954-0bb3-0621-4505-b0c7bbaf5342",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f10ef51-4e43-d188-6643-31056a2d485f",
  "kind": "lemma",
  "lexical_name": "isClosedEmbedding_starAlgHom",
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
  "slug": "isclosedembedding-staralghom--fa256844eef282849404aa2b",
  "source": {
    "blob": "e2c64f4e34fc652470fac9ca6b9e468838066640",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa256844eef282849404aa2bd4424273f0d4af0f90a27a81b9fcc965b47fb4e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f10ef51-4e43-d188-6643-31056a2d485f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isClosedEmbedding_starAlgHom {a : A} {φ : C(spectrum S a, S) →⋆ₐ[S] A}
    (hφ : IsClosedEmbedding φ) {f : C(S, R)} (h : SpectrumRestricts a f)
    (halg : IsUniformEmbedding (algebraMap R S)) :
    IsClosedEmbedding (h.starAlgHom φ) :=
  hφ.comp <| IsUniformEmbedding.isClosedEmbedding <| .comp
    (ContinuousMap.isUniformEmbedding_comp _ halg)
    (UniformEquiv.arrowCongr h.homeomorph.symm (.refl _) |>.isUniformEmbedding)

/-- Given a `ContinuousFunctionalCalculus S A q`. If we form the predicate `p` for `a : A`
characterized by: `q a` and the spectrum of `a` restricts to the scalar subring `R` via
`f : C(S, R)`, then we can get a restricted functional calculus
`ContinuousFunctionalCalculus R A p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Restrict/Variantd402e36993a343867cd09fb26668af430713606c1210059d254148aa1d1324ec.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c64f4e34fc652470fac9ca6b9e468838066640` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
