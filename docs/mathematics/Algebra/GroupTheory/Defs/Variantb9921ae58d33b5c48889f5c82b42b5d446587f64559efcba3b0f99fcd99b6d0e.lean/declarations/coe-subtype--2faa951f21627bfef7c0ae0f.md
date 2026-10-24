# coe_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbf2bad38cfe31fb408bd2792afee9e4f9dcf402",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c16ffcf-1e67-5a06-6ea9-009c26b9e13c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:763e4a03-9eb6-fcb4-dbb1-70cf6d156f84",
  "kind": "theorem",
  "lexical_name": "coe_subtype",
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
  "slug": "coe-subtype--2faa951f21627bfef7c0ae0f",
  "source": {
    "blob": "bbf2bad38cfe31fb408bd2792afee9e4f9dcf402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 396,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2faa951f21627bfef7c0ae0f07907f6b097d316afebe943f55e5737383794e02",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763e4a03-9eb6-fcb4-dbb1-70cf6d156f84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_subtype : (SubmonoidClass.subtype S' : S' → M) = Subtype.val :=
  rfl

end SubmonoidClass

namespace Submonoid

variable {M : Type*} [MulOneClass M] (S : Submonoid M)

/-- A submonoid of a monoid inherits a multiplication. -/
@[to_additive "An `AddSubmonoid` of an `AddMonoid` inherits an addition."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantb9921ae58d33b5c48889f5c82b42b5d446587f64559efcba3b0f99fcd99b6d0e.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf2bad38cfe31fb408bd2792afee9e4f9dcf402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
