# natAbs_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b5b92cd30f752cebe92841217a3d9baf4e3529c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f879052-3ec1-ad10-03de-1b86f0e6472d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ccf2aa7-6499-0d45-1ce1-dfd3528ef71e",
  "kind": "theorem",
  "lexical_name": "natAbs_surjective",
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
  "slug": "natabs-surjective--9b6710d0ae877d3ab31db3fd",
  "source": {
    "blob": "4b5b92cd30f752cebe92841217a3d9baf4e3529c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 199,
    "path": "GRWTSK/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b6710d0ae877d3ab31db3fd25cd4d131d08275b3be0f09776c4fde6ffa7bc17",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ccf2aa7-6499-0d45-1ce1-dfd3528ef71e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natAbs_surjective : natAbs.Surjective := fun n => ⟨n, natAbs_ofNat n⟩
#align int.nat_abs_surjective Int.natAbs_surjective

#align int.nat_abs_add_le Int.natAbs_add_le
#align int.nat_abs_sub_le Int.natAbs_sub_le
#align int.nat_abs_neg_of_nat Int.natAbs_negOfNat
#align int.nat_abs_mul Int.natAbs_mul
#align int.nat_abs_mul_nat_abs_eq Int.natAbs_mul_natAbs_eq
#align int.nat_abs_mul_self' Int.natAbs_mul_self'
#align int.neg_succ_of_nat_eq' Int.negSucc_eq'

@[deprecated natAbs_ne_zero]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5b92cd30f752cebe92841217a3d9baf4e3529c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
