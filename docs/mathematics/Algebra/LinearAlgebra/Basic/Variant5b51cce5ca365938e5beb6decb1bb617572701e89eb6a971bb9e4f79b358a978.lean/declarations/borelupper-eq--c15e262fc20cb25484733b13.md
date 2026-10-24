# borelUpper_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db4c889b1149f5b2b4a567d0913aa896612df039",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46f79552-50bf-3dd9-c241-0efc54472cbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1563ddfa-cba3-47ad-08da-239ad6b76fb4",
  "kind": "lemma",
  "lexical_name": "borelUpper_eq",
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
  "slug": "borelupper-eq--c15e262fc20cb25484733b13",
  "source": {
    "blob": "db4c889b1149f5b2b4a567d0913aa896612df039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 482,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c15e262fc20cb25484733b13e10b4fcd554459096c77ee241c78849a62af4e84",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1563ddfa-cba3-47ad-08da-239ad6b76fb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma borelUpper_eq :
    letI := b.isLieAbelian_cartan
    b.borelUpper = ⨆ (n : ι → ℕ) (_ : n ≠ 0), rootSpace H (∑ i, n i • b.baseSupp i) :=
  congr_fun ((b.iSupIndep_rootSpace.le_iff_eq_of_iSup_eq_top
    b.iSup_cartan_borelLower_borelUpper_eq_top).mp b.cartan_borelLower_borelUpper_le) 2

set_option linter.unusedFintypeInType false in
include b in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant5b51cce5ca365938e5beb6decb1bb617572701e89eb6a971bb9e4f79b358a978.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db4c889b1149f5b2b4a567d0913aa896612df039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
