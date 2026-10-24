# Ico_union_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b94b44cfed3401ef331b14e243dcd861589f1a9f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 841,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0cf2571-814d-959c-ac58-94da248f2fd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:54e42433-e33b-700f-ae16-b9640b58cda1",
  "kind": "theorem",
  "lexical_name": "Ico_union_Ico",
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
  "slug": "ico-union-ico--4bfbf3d6f7e650ed8909b14a",
  "source": {
    "blob": "b94b44cfed3401ef331b14e243dcd861589f1a9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 845,
    "line": 841,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bfbf3d6f7e650ed8909b14a6d392b6120c847fe323fddc2a9b16e188640bbf7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54e42433-e33b-700f-ae16-b9640b58cda1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–845.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_union_Ico {a b c d : α} (h₁ : min a b ≤ max c d) (h₂ : min c d ≤ max a b) :
    Ico a b ∪ Ico c d = Ico (min a c) (max b d) := by
  rw [← coe_inj, coe_union, coe_Ico, coe_Ico, coe_Ico, Set.Ico_union_Ico h₁ h₂]

/-- This is a special case of `Ico_union_Ico` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfc0e3b6dd62e5818accd8564cc253dcacdbdf1729556867b68f98215e100abc5.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94b44cfed3401ef331b14e243dcd861589f1a9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
