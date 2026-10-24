# IsLocalization.subsingleton_primeSpectrum_of_mem_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc973699a5a40a392efe805450355b715be3bdca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 294,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c680e48-a986-dfba-eb68-50c7c9b5528c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cbe36fd-da40-106e-5442-f5deb4692ddf",
  "kind": "lemma",
  "lexical_name": "IsLocalization.subsingleton_primeSpectrum_of_mem_minimalPrimes",
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
  "slug": "islocalization-subsingleton-primespectrum-of-mem-minimalprimes--d90034f998abc58d232e15ec",
  "source": {
    "blob": "cc973699a5a40a392efe805450355b715be3bdca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 294,
    "path": "GRWTSK/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d90034f998abc58d232e15ec89539ffadd9347a0e9434760197ed8ff40d5a5a1",
  "verification": {
    "reference": "docs/verification/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cbe36fd-da40-106e-5442-f5deb4692ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsLocalization.subsingleton_primeSpectrum_of_mem_minimalPrimes
    {R : Type*} [CommSemiring R] (p : Ideal R) (hp : p ∈ minimalPrimes R)
    (S : Type*) [CommSemiring S] [Algebra R S] [IsLocalization.AtPrime S p (hp := hp.1.1)] :
    Subsingleton (PrimeSpectrum S) :=
  have := hp.1.1
  have : Unique {i : Ideal R // i.IsPrime ∧ i ≤ p} := ⟨⟨p, hp.1.1, le_rfl⟩,
    fun i ↦ Subtype.ext <| (minimalPrimes_eq_minimals (R := R) ▸ hp).eq_of_le i.2.1 i.2.2⟩
  have := (IsLocalization.AtPrime.orderIsoOfPrime S p).subsingleton
  ⟨fun x y ↦ PrimeSpectrum.ext congr($(this.1 ⟨_, x.2⟩ ⟨_, y.2⟩))⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AtPrime/Variant0bdc2a2b92766e16266375eb276aaa2a5b9e7114a7f745e3c798addb05b5be2d.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc973699a5a40a392efe805450355b715be3bdca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
