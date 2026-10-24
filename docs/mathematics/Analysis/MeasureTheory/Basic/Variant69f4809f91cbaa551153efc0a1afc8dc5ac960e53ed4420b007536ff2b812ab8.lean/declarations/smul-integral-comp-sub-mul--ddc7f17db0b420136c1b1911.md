# smul_integral_comp_sub_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c5805fe53ede869148be37e413660047161c0fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 847,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69f4809f91cbaa551153efc0a1afc8dc5ac960e53ed4420b007536ff2b812ab8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:42062e76-127b-2044-b29b-6e63ba87a0c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fe9dd0e6-f8c0-09f2-030a-c0a375ad7d52",
  "kind": "theorem",
  "lexical_name": "smul_integral_comp_sub_mul",
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
  "slug": "smul-integral-comp-sub-mul--ddc7f17db0b420136c1b1911",
  "source": {
    "blob": "5c5805fe53ede869148be37e413660047161c0fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 847,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant69f4809f91cbaa551153efc0a1afc8dc5ac960e53ed4420b007536ff2b812ab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddc7f17db0b420136c1b1911fb590ee5fd0af9a0d17c7ab4985be02404810100",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant69f4809f91cbaa551153efc0a1afc8dc5ac960e53ed4420b007536ff2b812ab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe9dd0e6-f8c0-09f2-030a-c0a375ad7d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 847–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_integral_comp_sub_mul (c d) :
    (c • ∫ x in a..b, f (d - c * x)) = ∫ x in d - c * b..d - c * a, f x := by
  by_cases hc : c = 0 <;> simp [hc, integral_comp_sub_mul]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant69f4809f91cbaa551153efc0a1afc8dc5ac960e53ed4420b007536ff2b812ab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant69f4809f91cbaa551153efc0a1afc8dc5ac960e53ed4420b007536ff2b812ab8.lean#L847).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5805fe53ede869148be37e413660047161c0fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
