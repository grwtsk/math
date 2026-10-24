# qRight_one_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6be06cd-ea9c-1479-86f9-525e2727cdce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c66c713b-0651-3bba-8d95-c0be52d9c654",
  "kind": "theorem",
  "lexical_name": "qRight_one_right",
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
  "slug": "qright-one-right--ac86059344b480d2d1feca62",
  "source": {
    "blob": "71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac86059344b480d2d1feca62f1a000705ef6772ca16a54e8dd2912027c5b2930",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c66c713b-0651-3bba-8d95-c0be52d9c654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem qRight_one_right (t : I) : qRight (t, 1) = t :=
  Eq.trans (by rw [qRight]; norm_num) <| Set.projIcc_val zero_le_one _

end unitInterval

namespace Path

open unitInterval

variable {X : Type u} [TopologicalSpace X] {x y : X}

/-- This is the function analogous to the one on p. 475 of [serre1951], defining a homotopy from
the product path `γ ∧ e` to `γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HSpaces/Variantf3304a4f2009ebbe6b4ce3d0fdf4ad11944ef00b2310738719d037570981a4be.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71a9ef6282fd3e86e6e7b2c86cbe408cc288ca38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
