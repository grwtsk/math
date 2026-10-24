# setToFun_simpleFunc_eq_setToSimpleFunc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4e4aa6f3e20128323e329a05781bcc374efc171",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 259,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:08760a88-cc1c-8c69-1f75-c16c857fa30d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:954b49df-77bd-9350-c643-533c652147c5",
  "kind": "theorem",
  "lexical_name": "setToFun_simpleFunc_eq_setToSimpleFunc",
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
  "slug": "settofun-simplefunc-eq-settosimplefunc--ad4fa2f808399e94b597eebc",
  "source": {
    "blob": "a4e4aa6f3e20128323e329a05781bcc374efc171",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 259,
    "path": "GRWTSK/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad4fa2f808399e94b597eebcafb24879e9e4615b0a51337688597b85470c8efe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:954b49df-77bd-9350-c643-533c652147c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_simpleFunc_eq_setToSimpleFunc [CompleteSpace F]
    (hT : DominatedFinMeasAdditive μ T C) (f : SimpleFunc α E) (hf : Integrable f μ) :
    setToFun μ T hT f = f.setToSimpleFunc T := by
  rw [setToFun_simpleFunc hT f hf]
  rfl

section Order

-- Naming chosen to match the corresponding declarations in `L1.lean`.
variable {G' G'' : Type*}
  [NormedAddCommGroup G'] [PartialOrder G'] [NormedSpace ℝ G']
  [NormedAddCommGroup G''] [PartialOrder G''] [IsOrderedAddMonoid G'']
  [NormedSpace ℝ G'']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Function/Variant6cb73a95ea5e6a10d5571c0392192a26c743d10c94708848d09db61a54b508f4.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4e4aa6f3e20128323e329a05781bcc374efc171` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
