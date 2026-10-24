# pow_dvd_pow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 158,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aaa6eb99-106e-80bd-0e8b-87f67708b1fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:701afd53-45ed-6011-5f61-fa20030baa37",
  "kind": "lemma",
  "lexical_name": "pow_dvd_pow_iff",
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
  "slug": "pow-dvd-pow-iff--ed2c7c282b96ed54e2c11398",
  "source": {
    "blob": "2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 158,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed2c7c282b96ed54e2c11398c7a831505cee1b3f8d881cf54e260c2188800a96",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:701afd53-45ed-6011-5f61-fa20030baa37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_dvd_pow_iff (ha₀ : a ≠ 0) (ha : ¬IsUnit a) : a ^ n ∣ a ^ m ↔ n ≤ m := by
  constructor
  · intro h
    rw [← not_lt]
    intro hmn
    apply ha
    have : a ^ m * a ∣ a ^ m * 1 := by
      rw [← pow_succ, mul_one]
      exact (pow_dvd_pow _ (Nat.succ_le_of_lt hmn)).trans h
    rwa [mul_dvd_mul_iff_left, ← isUnit_iff_dvd_one] at this
    apply pow_ne_zero m ha₀
  · apply pow_dvd_pow

end CancelCommMonoidWithZero

section GroupWithZero
variable [GroupWithZero α]

/-- `∣` is not a useful definition if an inverse is available. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Divisibility/Variant65600742ad74bcd9bd9e122505c0038d39f9c2049719f6ef9beb05cd0ed3876c.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b3cc88f2b60a5afbfa37dadb1fe8054c1a65bbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
