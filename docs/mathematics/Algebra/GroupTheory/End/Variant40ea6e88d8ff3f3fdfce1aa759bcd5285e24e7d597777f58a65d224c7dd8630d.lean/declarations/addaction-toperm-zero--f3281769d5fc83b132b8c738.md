# AddAction.toPerm_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d36c42d030ab54641f1da1f326978138c8cc93b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9813cf8-c0c0-7f2c-12c9-41284529efe0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:440eb11a-8319-7a86-8a92-c2027a35f0b9",
  "kind": "theorem",
  "lexical_name": "AddAction.toPerm_zero",
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
  "slug": "addaction-toperm-zero--f3281769d5fc83b132b8c738",
  "source": {
    "blob": "6d36c42d030ab54641f1da1f326978138c8cc93b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 211,
    "path": "GRWTSK/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3281769d5fc83b132b8c7384e9faad7f643255ddc8007272b5e15b9ce01838a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:440eb11a-8319-7a86-8a92-c2027a35f0b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddAction.toPerm_zero :
    (AddAction.toPerm (0 : G)) = (1 : Equiv.Perm α) := by
  aesop

end AddGroup

section MulDistribMulAction
variable (M) [Group G] [Monoid M] [MulDistribMulAction G M]

/-- Each element of the group defines a multiplicative monoid isomorphism.

This is a stronger version of `MulAction.toPerm`. -/
@[simps +simpRhs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/End/Variant40ea6e88d8ff3f3fdfce1aa759bcd5285e24e7d597777f58a65d224c7dd8630d.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d36c42d030ab54641f1da1f326978138c8cc93b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
