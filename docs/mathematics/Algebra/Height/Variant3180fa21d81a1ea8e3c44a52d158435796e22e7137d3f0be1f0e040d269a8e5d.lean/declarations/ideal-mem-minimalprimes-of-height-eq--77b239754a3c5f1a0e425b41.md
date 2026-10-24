# Ideal.mem_minimalPrimes_of_height_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcd33cc9b8542f4a297a304e1fb55c2e4762f203",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f371667-f0a8-dd72-4047-8ee60a8257d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a47fa6e5-41bc-25c3-9de1-d6318333991b",
  "kind": "lemma",
  "lexical_name": "Ideal.mem_minimalPrimes_of_height_eq",
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
  "slug": "ideal-mem-minimalprimes-of-height-eq--77b239754a3c5f1a0e425b41",
  "source": {
    "blob": "dcd33cc9b8542f4a297a304e1fb55c2e4762f203",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77b239754a3c5f1a0e425b41e15f14ac8e93713d63fa0df2da40577021d7e06f",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a47fa6e5-41bc-25c3-9de1-d6318333991b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.mem_minimalPrimes_of_height_eq {I J : Ideal R} (e : I ≤ J) [J.IsPrime]
    [FiniteHeight J] (e' : J.height ≤ I.height) : J ∈ I.minimalPrimes := by
  obtain ⟨p, h₁, h₂⟩ := Ideal.exists_minimalPrimes_le e
  convert h₁
  refine (eq_of_le_of_not_lt h₂ fun h₃ ↦ ?_).symm
  have := h₁.1.1
  have := finiteHeight_of_le h₂ IsPrime.ne_top'
  exact lt_irrefl _
     ((height_strict_mono_of_is_prime h₃).trans_le (e'.trans <| height_mono h₁.1.2))

/-- A prime ideal has height zero if and only if it is minimal -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variant3180fa21d81a1ea8e3c44a52d158435796e22e7137d3f0be1f0e040d269a8e5d.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcd33cc9b8542f4a297a304e1fb55c2e4762f203` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
