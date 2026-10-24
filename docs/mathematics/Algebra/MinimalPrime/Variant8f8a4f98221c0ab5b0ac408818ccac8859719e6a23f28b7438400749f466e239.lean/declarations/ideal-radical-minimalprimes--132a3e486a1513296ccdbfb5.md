# Ideal.radical_minimalPrimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7dbec3c4-c35b-3990-57aa-4a230b68063c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02c5315c-cd30-965a-2a95-5e2ea3310ba3",
  "kind": "theorem",
  "lexical_name": "Ideal.radical_minimalPrimes",
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
  "slug": "ideal-radical-minimalprimes--132a3e486a1513296ccdbfb5",
  "source": {
    "blob": "abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:132a3e486a1513296ccdbfb5dbdc747eb37d0ffda49a8684260b0dbb0fc00f2d",
  "verification": {
    "reference": "docs/verification/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02c5315c-cd30-965a-2a95-5e2ea3310ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.radical_minimalPrimes : I.radical.minimalPrimes = I.minimalPrimes := by
  rw [Ideal.minimalPrimes, Ideal.minimalPrimes]
  congr
  ext p
  refine' ⟨_, _⟩ <;> rintro ⟨⟨a, ha⟩, b⟩
  · refine' ⟨⟨a, a.radical_le_iff.1 ha⟩, _⟩
    · simp only [Set.mem_setOf_eq, and_imp] at *
      exact fun _ h2 h3 h4 => b h2 (h2.radical_le_iff.2 h3) h4
  · refine' ⟨⟨a, a.radical_le_iff.2 ha⟩, _⟩
    · simp only [Set.mem_setOf_eq, and_imp] at *
      exact fun _ h2 h3 h4 => b h2 (h2.radical_le_iff.1 h3) h4
#align ideal.radical_minimal_primes Ideal.radical_minimalPrimes

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinimalPrime/Variant8f8a4f98221c0ab5b0ac408818ccac8859719e6a23f28b7438400749f466e239.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abdc6b3c0fa895d8a46ec2cf5aff01faabf9effe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
