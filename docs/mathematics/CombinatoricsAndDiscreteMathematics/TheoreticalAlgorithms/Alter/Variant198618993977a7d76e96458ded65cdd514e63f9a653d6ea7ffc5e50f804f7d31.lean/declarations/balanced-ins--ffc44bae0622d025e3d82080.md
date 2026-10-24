# Balanced.ins

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "796effa86ddec1de681bb483a57a836369f39de0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d76fb39-adef-3880-4729-bdedf2b2b3a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3cdec9e-ceb8-bda2-c7d9-2b302a39104b",
  "kind": "theorem",
  "lexical_name": "Balanced.ins",
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
  "slug": "balanced-ins--ffc44bae0622d025e3d82080",
  "source": {
    "blob": "796effa86ddec1de681bb483a57a836369f39de0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 94,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc44bae0622d025e3d820800653ab93b7933da56dddfbac3ef99b8bf54ff81f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3cdec9e-ceb8-bda2-c7d9-2b302a39104b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Balanced.ins {path : Path α}
    (hp : path.Balanced c₀ n₀ c n) (ht : t.RedRed (c = red) n) :
    ∃ n, (path.ins t).Balanced black n := by
  induction hp generalizing t with
  | root => exact ht.setBlack
  | redL hr hp ih => match ht with
    | .balanced .nil => exact ih (.balanced (.red .nil hr))
    | .balanced (.red ha hb) => exact ih (.redred rfl (.red ha hb) hr)
    | .balanced (.black ha hb) => exact ih (.balanced (.red (.black ha hb) hr))
  | redR hl hp ih => match ht with
    | .balanced .nil => exact ih (.balanced (.red hl .nil))
    | .balanced (.red ha hb) => exact ih (.redred rfl hl (.red ha hb))
    | .balanced (.black ha hb) => exact ih (.balanced (.red hl (.black ha hb)))
  | blackL hr _hp ih => exact have ⟨c, h⟩ := ht.balance1 hr; ih (.balanced h)
  | blackR hl _hp ih => exact have ⟨c, h⟩ := ht.balance2 hl; ih (.balanced h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variant198618993977a7d76e96458ded65cdd514e63f9a653d6ea7ffc5e50f804f7d31.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `796effa86ddec1de681bb483a57a836369f39de0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
