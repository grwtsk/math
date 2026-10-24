# truncateFun_intCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b48e5167f046900b569d36efdc2f8d34e8b4ab9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 254,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e3da1d2e-654b-1764-8644-47664be37746",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:98c2f2f7-35b3-f297-915c-604cc88564ac",
  "kind": "theorem",
  "lexical_name": "truncateFun_intCast",
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
  "slug": "truncatefun-intcast--3018b788bb1bbde1097c5291",
  "source": {
    "blob": "2b48e5167f046900b569d36efdc2f8d34e8b4ab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 254,
    "path": "GRWTSK/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3018b788bb1bbde1097c52915897e307cc7579363bb09d1960848e4590904cf2",
  "verification": {
    "reference": "docs/verification/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98c2f2f7-35b3-f297-915c-604cc88564ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncateFun_intCast (m : ℤ) : truncateFun n (m : 𝕎 R) = m := rfl

end WittVector

namespace TruncatedWittVector

open WittVector

variable (p n R)
variable [CommRing R]
variable [Fact p.Prime]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Truncated/Variant3f4bbb391efca0395e51b3bd33d91b5f6f1d827b4f10364e8147dc670be0e0d4.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b48e5167f046900b569d36efdc2f8d34e8b4ab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
