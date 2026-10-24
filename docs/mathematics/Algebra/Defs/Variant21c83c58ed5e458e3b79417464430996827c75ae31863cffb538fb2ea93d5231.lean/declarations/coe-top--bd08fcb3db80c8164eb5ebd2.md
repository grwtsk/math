# coe_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "553709f06bb734821044427d121d4566b6d55244",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f794d6c-d009-fb8a-6336-86c6b8869dff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d80f630-fec3-f336-be32-9023489d7407",
  "kind": "theorem",
  "lexical_name": "coe_top",
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
  "slug": "coe-top--bd08fcb3db80c8164eb5ebd2",
  "source": {
    "blob": "553709f06bb734821044427d121d4566b6d55244",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 359,
    "path": "GRWTSK/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd08fcb3db80c8164eb5ebd2f835b1b8cfc245b966f8d6d0a4025d5601f939ab",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d80f630-fec3-f336-be32-9023489d7407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_top : ((⊤ : Subsemiring R) : Set R) = Set.univ :=
  rfl

end Subsemiring

namespace Subsemiring

/-- The inf of two subsemirings is their intersection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant21c83c58ed5e458e3b79417464430996827c75ae31863cffb538fb2ea93d5231.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553709f06bb734821044427d121d4566b6d55244` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
