# two_pow_norm_zeta_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bce9e250-5128-b30a-46ed-c0904259204b",
  "kind": "theorem",
  "lexical_name": "two_pow_norm_zeta_sub_one",
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
  "slug": "two-pow-norm-zeta-sub-one--9b256138136817eadba7586f",
  "source": {
    "blob": "1bc21bdb0894bce36dee03500013ef1ccb4d5e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 558,
    "line": 551,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b256138136817eadba7586f6630df44f5ed8b71a9c4eb41e2b6601b13e941b6",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce9e250-5128-b30a-46ed-c0904259204b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 551–558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_pow_norm_zeta_sub_one {k : ℕ} (hk : 2 ≤ k) [IsCyclotomicExtension {(2 : ℕ+) ^ k} K L]
    (hirr : Irreducible (cyclotomic (2 ^ k) K)) : norm K (zeta ((2 : ℕ+) ^ k) K L - 1) = 2 :=
  sub_one_norm_two (zeta_spec ((2 : ℕ+) ^ k) K L) hk hirr
#align is_cyclotomic_extension.two_pow_norm_zeta_sub_one IsCyclotomicExtension.two_pow_norm_zeta_sub_one

end IsCyclotomicExtension

end Norm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimitiveRoots/Variant0fdb7619e166ed031309d9ad0d042fe91243084034a0200cfc078283976d3d68.lean#L551).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bc21bdb0894bce36dee03500013ef1ccb4d5e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
