# coe_finsetSup'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1821a0632188add8f53cadf5a07c52e30d49d5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 460,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1938b3f8-fae0-46eb-81e8-05d0f502369d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e0fbf49-3038-37a9-4e8e-2d941c314fad",
  "kind": "lemma",
  "lexical_name": "coe_finsetSup'",
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
  "slug": "coe-finsetsup--ee3f2043d8e2f6b446b1b0dc",
  "source": {
    "blob": "b1821a0632188add8f53cadf5a07c52e30d49d5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 460,
    "path": "GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee3f2043d8e2f6b446b1b0dc88d0d8c038d107c215cb040e344836423b3dc1fd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e0fbf49-3038-37a9-4e8e-2d941c314fad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coe_finsetSup' {ι : Type*} {s : Finset ι} (H : s.Nonempty) (f : ι → C_c(α, β)) :
    ⇑(s.sup' H f) = s.sup' H fun i ↦ ⇑(f i) := by ext; simp [finsetSup'_apply]

end SemilatticeSup

section SemilatticeInf

variable [SemilatticeInf β] [Zero β] [TopologicalSpace β] [ContinuousInf β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactlySupported/Variantddaab692abe112924cca72603d504af69b0746a2d0d82d244dc45c655c665d51.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1821a0632188add8f53cadf5a07c52e30d49d5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
