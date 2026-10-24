# prime_factor_mem_primesUpTo_of_dvd_le

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
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5482653c-827c-87f9-15b1-3fc3a34a3942",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba99f56c-592c-d2ae-6837-b1d935e5feb6",
  "kind": "theorem",
  "lexical_name": "prime_factor_mem_primesUpTo_of_dvd_le",
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
  "slug": "prime-factor-mem-primesupto-of-dvd-le--00ddbe191b5b61ff73b1c07f",
  "source": {
    "blob": "0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00ddbe191b5b61ff73b1c07f1c461ee0f5be932fb80a7ef2cb18556062604db5",
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

Occurrence: `result:ba99f56c-592c-d2ae-6837-b1d935e5feb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_factor_mem_primesUpTo_of_dvd_le
    {p n N : Nat}
    (hp : Nat.Prime p)
    (hpn : p ∣ n)
    (hnpos : 0 < n)
    (hnN : n ≤ N) :
    p ∈ primesUpTo N := by
  rw [mem_primesUpTo_iff]
  exact ⟨hp, (Nat.le_of_dvd hnpos hpn).trans hnN⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeExhaustion/Variantbcba9c94285e0e9668776f0d7e8d56618f797a6e1fc73cb7a1ff07d91daccd15.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ef1ed4a5ebbac5fffc85540bbcc57a1fda1890f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
