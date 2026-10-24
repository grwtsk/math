# not_exists_int_prime_dvd_sub_of_prime_ne_two'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2c47f79-8649-1dbc-a23b-8e5c70a4607f",
  "kind": "theorem",
  "lexical_name": "not_exists_int_prime_dvd_sub_of_prime_ne_two'",
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
  "slug": "not-exists-int-prime-dvd-sub-of-prime-ne-two--0b99069541bb17019c8ba7d9",
  "source": {
    "blob": "2bfbc50ddf81b8eb63cc4180199762b7548d7efd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 494,
    "path": "GRWTSK/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b99069541bb17019c8ba7d99af7deb7610daaed1c0f5ac185eac56e2ccd517e",
  "verification": {
    "reference": "docs/verification/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2c47f79-8649-1dbc-a23b-8e5c70a4607f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 494–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_exists_int_prime_dvd_sub_of_prime_ne_two'
    [hcycl : IsCyclotomicExtension {p} ℚ K]
    (hζ : IsPrimitiveRoot ζ ↑p) (hodd : p ≠ 2) :
    ¬(∃ n : ℤ, (p : 𝓞 K) ∣ (hζ.toInteger - n : 𝓞 K)) := by
  have : IsCyclotomicExtension {p ^ (0 + 1)} ℚ K := by simpa using hcycl
  replace hζ : IsPrimitiveRoot ζ (p ^ (0 + 1)) := by simpa using hζ
  exact not_exists_int_prime_dvd_sub_of_prime_ne_two hζ hodd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rat/Variant2655ce542abe4ce574f0dc9fbfb76f71987177e33143ca937a07ca942301c5a6.lean#L494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bfbc50ddf81b8eb63cc4180199762b7548d7efd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
