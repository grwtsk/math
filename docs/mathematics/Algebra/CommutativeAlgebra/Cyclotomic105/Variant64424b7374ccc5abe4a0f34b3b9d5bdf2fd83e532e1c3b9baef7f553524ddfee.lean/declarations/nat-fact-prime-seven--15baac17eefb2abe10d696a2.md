# Nat.fact_prime_seven

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8db2876722216d6448a954ea417eea3b990e7e8436d5ce72be2b198bfc2ad384",
  "kind": "instance",
  "lexical_name": "Nat.fact_prime_seven",
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
  "slug": "nat-fact-prime-seven--15baac17eefb2abe10d696a2",
  "source": {
    "blob": "ac9cfb23cfc049bb929c634260c81e2925247397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 39,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15baac17eefb2abe10d696a265d5b72d5af0e42ee0486cef5fe6ce24a0a2f299",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8db2876722216d6448a954ea417eea3b990e7e8436d5ce72be2b198bfc2ad384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Nat.fact_prime_seven : Fact (Nat.Prime 7) :=
  ⟨by norm_num⟩
#align counterexample.nat.fact_prime_seven Counterexample.Nat.fact_prime_seven

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Cyclotomic105/Variant64424b7374ccc5abe4a0f34b3b9d5bdf2fd83e532e1c3b9baef7f553524ddfee.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac9cfb23cfc049bb929c634260c81e2925247397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
