# inserted_prime_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5efbe7a9-0d98-e70f-813f-e8233bdcaf2a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df2ba0ff-4ed1-e263-ae42-0032f64227aa",
  "kind": "theorem",
  "lexical_name": "inserted_prime_coprime",
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
  "slug": "inserted-prime-coprime--8ab5d23ce26d08df42850289",
  "source": {
    "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 99,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ab5d23ce26d08df42850289df56b86a7e7ab28a02cfbefe24a523e6fa456303",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df2ba0ff-4ed1-e263-ae42-0032f64227aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inserted_prime_coprime (P : Finset ℕ) (p : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P)
    (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) : Nat.Coprime p (a.1 * a.2) := by
  have hs := (mem_supportedPairs_iff P hP a.1 a.2).mp ha
  apply hp.coprime_iff_not_dvd.mpr
  intro hd
  have hm : p ∈ (a.1 * a.2).primeFactors :=
    Nat.mem_primeFactors.mpr ⟨hp, hd, Nat.mul_ne_zero hs.1.ne_zero hs.2.1.ne_zero⟩
  rw [Nat.primeFactors_mul hs.1.ne_zero hs.2.1.ne_zero] at hm
  rcases mem_union.mp hm with hu | hv
  · exact hpP (hs.2.2.2.1 hu)
  · exact hpP (hs.2.2.2.2 hv)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f47bc15ee7659d444f6099da0293a4fd500d3780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
