# forall_prime_iff_two_and_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62a4a6cbe937741b48ce989f77461514770c759a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84972d47-3dc5-ccd5-c892-506ee721b807",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7263e35e-b2a8-970c-1936-7cc4ccf80a77",
  "kind": "theorem",
  "lexical_name": "forall_prime_iff_two_and_odd",
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
  "slug": "forall-prime-iff-two-and-odd--64bc75360f1125614cfde5f8",
  "source": {
    "blob": "62a4a6cbe937741b48ce989f77461514770c759a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 110,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64bc75360f1125614cfde5f8de1261b0114ade05cb098a58a21340f41ea81c33",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7263e35e-b2a8-970c-1936-7cc4ccf80a77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_prime_iff_two_and_odd {P : ℕ → Prop} :
    (∀ p, p.Prime → P p) ↔ P 2 ∧ ∀ p, p.Prime → Odd p → P p := by
  refine ⟨fun h ↦ ⟨h 2 prime_two, fun p hp _ ↦ h p hp⟩, fun h p hp ↦ ?_⟩
  obtain rfl | hne := eq_or_ne p 2
  · exact h.1
  · exact h.2 p hp (hp.odd_of_ne_two hne)

/-- To prove a property of all primes, it is enough to prove it for `2` and for the odd primes. -/
alias ⟨_, forall_prime_of_two_of_odd⟩ := forall_prime_iff_two_and_odd

/-- A prime `p` satisfies `p % 2 = 1` if and only if `p ≠ 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantb71a7d5f51c626ae6b70cbe36bab7b77a691f9a214373cfb98e170bd7e6f9aeb.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62a4a6cbe937741b48ce989f77461514770c759a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
