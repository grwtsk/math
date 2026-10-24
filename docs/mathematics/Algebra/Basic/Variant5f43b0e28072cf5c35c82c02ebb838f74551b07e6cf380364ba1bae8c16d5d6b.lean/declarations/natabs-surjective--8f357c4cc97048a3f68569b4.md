# natAbs_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:311d49a1-2b55-f799-aeab-207bb6e8e938",
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
  "slug": "natabs-surjective--8f357c4cc97048a3f68569b4",
  "source": {
    "blob": "4f38e21097d0c09f66c23eab6b82f00a091aec65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 207,
    "path": "GRWTSK/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f357c4cc97048a3f68569b42d9dc9898708f8d90d3d357c65a8a79b3ad1fc44",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:311d49a1-2b55-f799-aeab-207bb6e8e938`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–218.

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

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f38e21097d0c09f66c23eab6b82f00a091aec65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
