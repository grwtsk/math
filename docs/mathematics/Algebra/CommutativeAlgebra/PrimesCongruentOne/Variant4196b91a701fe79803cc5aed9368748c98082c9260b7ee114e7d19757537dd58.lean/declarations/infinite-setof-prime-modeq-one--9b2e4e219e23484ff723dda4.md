# infinite_setOf_prime_modEq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77b0e698-f08a-4011-9f83-5b4b19a5dc97",
  "kind": "theorem",
  "lexical_name": "infinite_setOf_prime_modEq_one",
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
  "slug": "infinite-setof-prime-modeq-one--9b2e4e219e23484ff723dda4",
  "source": {
    "blob": "4af6071f139f0757f13a8d8387854c3e4b0663ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 72,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b2e4e219e23484ff723dda43e914a2782f5624a65b2d796424cd25cbd72ce15",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77b0e698-f08a-4011-9f83-5b4b19a5dc97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infinite_setOf_prime_modEq_one {k : ℕ} (hk0 : k ≠ 0) :
    Set.Infinite {p : ℕ | Nat.Prime p ∧ p ≡ 1 [MOD k]} :=
  frequently_atTop_iff_infinite.1 (frequently_atTop_modEq_one hk0)

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PrimesCongruentOne/Variant4196b91a701fe79803cc5aed9368748c98082c9260b7ee114e7d19757537dd58.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4af6071f139f0757f13a8d8387854c3e4b0663ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
