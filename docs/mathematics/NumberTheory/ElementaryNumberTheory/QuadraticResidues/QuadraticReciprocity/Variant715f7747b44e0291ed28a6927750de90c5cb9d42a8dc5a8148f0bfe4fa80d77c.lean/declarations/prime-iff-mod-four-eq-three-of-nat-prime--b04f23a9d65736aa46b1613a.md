# prime_iff_mod_four_eq_three_of_nat_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb217fea-3356-9a20-d2ab-087fad81375d",
  "kind": "theorem",
  "lexical_name": "prime_iff_mod_four_eq_three_of_nat_prime",
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
  "slug": "prime-iff-mod-four-eq-three-of-nat-prime--b04f23a9d65736aa46b1613a",
  "source": {
    "blob": "1ff11fe8ba39c066c97f5e424ad2fe63a30aef88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 106,
    "path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b04f23a9d65736aa46b1613aa68f10eb29232767af3beabd0148d9248abb5a5a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb217fea-3356-9a20-d2ab-087fad81375d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_iff_mod_four_eq_three_of_nat_prime (p : ℕ) [Fact p.Prime] :
    Prime (p : ℤ[i]) ↔ p % 4 = 3 :=
  ⟨mod_four_eq_three_of_nat_prime_of_prime p, prime_of_nat_prime_of_mod_four_eq_three p⟩
#align gaussian_int.prime_iff_mod_four_eq_three_of_nat_prime GaussianInt.prime_iff_mod_four_eq_three_of_nat_prime

end GaussianInt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/QuadraticReciprocity/Variant715f7747b44e0291ed28a6927750de90c5cb9d42a8dc5a8148f0bfe4fa80d77c.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ff11fe8ba39c066c97f5e424ad2fe63a30aef88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
