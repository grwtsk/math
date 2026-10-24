# not_exists_int_prime_dvd_sub_of_prime_ne_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 476,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1afae031-8fb2-c7d5-35c0-026fa21326ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ffcd0aa0-706f-bec1-f483-25c35a24f78d",
  "kind": "theorem",
  "lexical_name": "not_exists_int_prime_dvd_sub_of_prime_ne_two",
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
  "slug": "not-exists-int-prime-dvd-sub-of-prime-ne-two--9341835b01ee6620cbaf1e24",
  "source": {
    "blob": "5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 476,
    "path": "GRWTSK/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9341835b01ee6620cbaf1e2427edd1a937f4a339b4dcaa71c62a91228f315d46",
  "verification": {
    "reference": "docs/verification/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffcd0aa0-706f-bec1-f483-25c35a24f78d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_exists_int_prime_dvd_sub_of_prime_ne_two
    [hcycl : IsCyclotomicExtension {p ^ (k + 1)} ℚ K]
    (hζ : IsPrimitiveRoot ζ ↑(p ^ (k + 1))) (hodd : p ≠ 2) :
    ¬(∃ n : ℤ, (p : 𝓞 K) ∣ (hζ.toInteger - n : 𝓞 K)) := by
  refine not_exists_int_prime_dvd_sub_of_prime_pow_ne_two hζ (fun h ↦ ?_)
  simp_all only [(@Nat.Prime.pow_eq_iff 2 p (k+1) Nat.prime_two).mp (by assumption_mod_cast),
    pow_one, ne_eq]

/-- In a `p`-th cyclotomic extension of `ℚ `, we have that `ζ` is not congruent to an
  integer modulo `p` if `p ≠ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Rat/Variantfc86d59585bdeec80c7e1b58784bafa429f39a56e1616c84713ca98700ae05fb.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c9f72232eb3095958a8d8d4cb0a2a6e3fd00efa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
