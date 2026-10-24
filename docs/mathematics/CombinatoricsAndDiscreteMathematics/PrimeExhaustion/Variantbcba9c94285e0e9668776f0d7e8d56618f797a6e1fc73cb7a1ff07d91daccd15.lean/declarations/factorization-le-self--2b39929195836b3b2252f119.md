# factorization_le_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efc9ce8e-c486-29f9-f971-bb40815090b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f0d94de-1f7e-8c64-0389-dec53674d836",
  "kind": "theorem",
  "lexical_name": "factorization_le_self",
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
  "slug": "factorization-le-self--2b39929195836b3b2252f119",
  "source": {
    "blob": "0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b39929195836b3b2252f119622ab40f8809098d3ba3d51d73b8f029e835a0a0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f0d94de-1f7e-8c64-0389-dec53674d836`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_le_self
    {n p : Nat}
    (hn : 0 < n) :
    Nat.factorization n p ≤ n := by
  by_cases hp : Nat.Prime p
  · have hdvd : p ^ Nat.factorization n p ∣ n := by
      exact (hp.pow_dvd_iff_le_factorization hn.ne').mpr (le_refl _)
    have hv2 : Nat.factorization n p ≤ 2 ^ Nat.factorization n p :=
      le_of_lt (Nat.factorization n p).lt_two_pow_self
    have h2p : 2 ^ Nat.factorization n p ≤ p ^ Nat.factorization n p :=
      Nat.pow_le_pow_left hp.two_le (Nat.factorization n p)
    have hpn : p ^ Nat.factorization n p ≤ n :=
      Nat.le_of_dvd hn hdvd
    exact hv2.trans (h2p.trans hpn)
  · rw [Nat.factorization_eq_zero_of_not_prime n hp]
    exact Nat.zero_le n

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
