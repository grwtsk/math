# ofUnits_le_iff_le_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c38ff4ff41d5845b867d42c3efaa78f19f8f11bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:caf3b8d2-a9a2-9432-af98-5981125305e8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40436114-9dfd-5bbd-732c-9fc8dcb914a6",
  "kind": "lemma",
  "lexical_name": "ofUnits_le_iff_le_units",
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
  "slug": "ofunits-le-iff-le-units--c6068e722d0ca807eb725ee6",
  "source": {
    "blob": "c38ff4ff41d5845b867d42c3efaa78f19f8f11bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 84,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6068e722d0ca807eb725ee6433030372200c451ef27ea593859e3a706f7d8d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40436114-9dfd-5bbd-732c-9fc8dcb914a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofUnits_le_iff_le_units (S : Submonoid M) (H : Subgroup Mˣ) :
    H.ofUnits ≤ S ↔ H ≤ S.units := ofUnits_units_gc _ _

namespace Submonoid

section Units

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantfea531de1c943bbde122e9608d3ac36abb7025a61ded1db28172694d11c1e906.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c38ff4ff41d5845b867d42c3efaa78f19f8f11bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
