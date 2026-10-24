# nonMemberSubfamily_nonMemberSubfamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5513dad515e3c1b8791a78fc8e06eaea3733701a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:091917bd-1d86-4b6f-c2f9-260fb34efac1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b6764ee-3712-80cc-2311-db594ca5854d",
  "kind": "theorem",
  "lexical_name": "nonMemberSubfamily_nonMemberSubfamily",
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
  "slug": "nonmembersubfamily-nonmembersubfamily--faddb819f3e1c1836d21cb64",
  "source": {
    "blob": "5513dad515e3c1b8791a78fc8e06eaea3733701a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:faddb819f3e1c1836d21cb64d167d8aa20b5ed825c1b20555c45204287b6e3b1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b6764ee-3712-80cc-2311-db594ca5854d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonMemberSubfamily_nonMemberSubfamily :
    (𝒜.nonMemberSubfamily a).nonMemberSubfamily a = 𝒜.nonMemberSubfamily a := by
  ext
  simp
#align finset.non_member_subfamily_non_member_subfamily Finset.nonMemberSubfamily_nonMemberSubfamily

end Finset

open Finset

-- The namespace is here to distinguish from other compressions.
namespace Down

/-- `a`-down-compressing `𝒜` means removing `a` from the elements of `𝒜` that contain it, when the
resulting Finset is not already in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantbdefcb6acdbc96e0e95a8b99cdbd1981772df1e8ce93c396c268e445128f5d7b.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5513dad515e3c1b8791a78fc8e06eaea3733701a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
