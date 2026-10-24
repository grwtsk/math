# pow_dvd_pow_iff_pow_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8d8524fd49e3e930a51143fdc53a828e6926953",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 194,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e97460a-082f-fc57-6b43-19b06674fb6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cae2d578-0aa2-10f7-552d-67e516cd64c5",
  "kind": "theorem",
  "lexical_name": "pow_dvd_pow_iff_pow_le_pow",
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
  "slug": "pow-dvd-pow-iff-pow-le-pow--0dffa446ef9f77a4cf417bfa",
  "source": {
    "blob": "f8d8524fd49e3e930a51143fdc53a828e6926953",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 194,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dffa446ef9f77a4cf417bfa84fd8ba35e7e1c7d985205fa9db68c20f0e7ce53",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cae2d578-0aa2-10f7-552d-67e516cd64c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_dvd_pow_iff_pow_le_pow {k l : ℕ} : ∀ {x : ℕ} (_ : 0 < x), x ^ k ∣ x ^ l ↔ x ^ k ≤ x ^ l
  | x + 1, w => by
    constructor
    · intro a
      exact le_of_dvd (pow_pos (succ_pos x) l) a
    · intro a
      cases' x with x
      · simp
      · have le := (pow_le_iff_le_right (Nat.le_add_left _ _)).mp a
        use (x + 2) ^ (l - k)
        rw [← pow_add, add_comm k, tsub_add_cancel_of_le le]
#align nat.pow_dvd_pow_iff_pow_le_pow Nat.pow_dvd_pow_iff_pow_le_pow

/-- If `1 < x`, then `x^k` divides `x^l` if and only if `k` is at most `l`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Pow/Variant482dbbed3c2a73fa54c110cd6c9815152ef33c52ef44f06a3f4fb39befbdfc1e.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d8524fd49e3e930a51143fdc53a828e6926953` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
