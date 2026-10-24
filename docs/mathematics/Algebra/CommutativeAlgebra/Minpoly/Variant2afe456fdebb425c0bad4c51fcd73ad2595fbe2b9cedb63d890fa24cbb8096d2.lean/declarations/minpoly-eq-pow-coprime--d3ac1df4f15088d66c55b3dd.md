# minpoly_eq_pow_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23b5d58850ee1ed7ece69ea51db511223bd4e70a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a46eb1d-a312-eac0-9c90-08b39df2668b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae44e504-b3b3-5dd4-f2ea-351f0bf23391",
  "kind": "theorem",
  "lexical_name": "minpoly_eq_pow_coprime",
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
  "slug": "minpoly-eq-pow-coprime--d3ac1df4f15088d66c55b3dd",
  "source": {
    "blob": "23b5d58850ee1ed7ece69ea51db511223bd4e70a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 175,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3ac1df4f15088d66c55b3dd376accd272ce9b080f91512c43b3f78ee98a11cc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae44e504-b3b3-5dd4-f2ea-351f0bf23391`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minpoly_eq_pow_coprime {m : ℕ} (hcop : Nat.coprime m n) :
    minpoly ℤ μ = minpoly ℤ (μ ^ m) := by
  revert n hcop
  refine' UniqueFactorizationMonoid.induction_on_prime m _ _ _
  · intro h hn
    congr
    simpa [(Nat.coprime_zero_left _).mp hn] using h
  · intro u hunit _ _
    congr
    simp [Nat.isUnit_iff.mp hunit]
  · intro a p _ hprime
    intro hind h hcop
    rw [hind h (Nat.coprime.coprime_mul_left hcop)]; clear hind
    replace hprime := hprime.nat_prime
    have hdiv := (Nat.Prime.coprime_iff_not_dvd hprime).1 (Nat.coprime.coprime_mul_right hcop)
    haveI := Fact.mk hprime
    rw [minpoly_eq_pow (h.pow_of_coprime a (Nat.coprime.coprime_mul_left hcop)) hdiv]
    congr 1
    ring
#align is_primitive_root.minpoly_eq_pow_coprime IsPrimitiveRoot.minpoly_eq_pow_coprime

/-- If `m : ℕ` is coprime with `n`,
then the minimal polynomial of a primitive `n`-th root of unity `μ`
has `μ ^ m` as root. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant2afe456fdebb425c0bad4c51fcd73ad2595fbe2b9cedb63d890fa24cbb8096d2.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23b5d58850ee1ed7ece69ea51db511223bd4e70a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
