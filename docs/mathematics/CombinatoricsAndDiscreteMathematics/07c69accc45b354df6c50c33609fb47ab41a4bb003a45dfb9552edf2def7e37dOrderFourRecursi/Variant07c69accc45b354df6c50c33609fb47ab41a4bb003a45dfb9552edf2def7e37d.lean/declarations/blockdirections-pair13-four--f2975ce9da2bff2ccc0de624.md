# blockDirections_pair13_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e3db9c319ef295edd69a605e31d0a234b987bb5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 347,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c368c02c-224e-d6d0-d940-76f16020ed07",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3875892-8898-cb88-7ada-327329653a8c",
  "kind": "theorem",
  "lexical_name": "blockDirections_pair13_four",
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
  "slug": "blockdirections-pair13-four--f2975ce9da2bff2ccc0de624",
  "source": {
    "blob": "3e3db9c319ef295edd69a605e31d0a234b987bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2975ce9da2bff2ccc0de624c2b32fc059b564be649714bff312b5d9b2c8cf60",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3875892-8898-cb88-7ada-327329653a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem blockDirections_pair13_four
    (directions : Fin 4 → E) :
    blockDirections directions ({(1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)) =
      ![directions 1, directions 3] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(1 : Fin 4), (3 : Fin 4)} : Finset (Fin 4)))
    (f := (![1, 3] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  fin_cases j
  · exact congrArg directions (congrFun h 0).symm
  · exact congrArg directions (congrFun h 1).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37dOrderFourRecursi/Variant07c69accc45b354df6c50c33609fb47ab41a4bb003a45dfb9552edf2def7e37d.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3db9c319ef295edd69a605e31d0a234b987bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
