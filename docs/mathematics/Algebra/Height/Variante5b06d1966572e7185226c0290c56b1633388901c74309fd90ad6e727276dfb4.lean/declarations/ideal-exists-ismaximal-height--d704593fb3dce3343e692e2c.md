# Ideal.exists_isMaximal_height

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ff202cf852e6f58ca97e69df907b3de90b408e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0cb450a-569d-1f52-4ab6-ee53b0ee6743",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a000bce3-9db0-6ab6-74a0-5e166e4a1bd3",
  "kind": "lemma",
  "lexical_name": "Ideal.exists_isMaximal_height",
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
  "slug": "ideal-exists-ismaximal-height--d704593fb3dce3343e692e2c",
  "source": {
    "blob": "2ff202cf852e6f58ca97e69df907b3de90b408e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 189,
    "path": "GRWTSK/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d704593fb3dce3343e692e2c98be05dd0d68c0ac0756b9c4f72560f03acdd344",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a000bce3-9db0-6ab6-74a0-5e166e4a1bd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.exists_isMaximal_height [FiniteRingKrullDim R] :
    ∃ (p : Ideal R), p.IsMaximal ∧ p.height = ringKrullDim R := by
  let l := LTSeries.longestOf (PrimeSpectrum R)
  obtain ⟨m, hm, hle⟩ := l.last.asIdeal.exists_le_maximal IsPrime.ne_top'
  refine ⟨m, hm, le_antisymm (height_le_ringKrullDim_of_ne_top IsPrime.ne_top') ?_⟩
  trans (l.last.asIdeal.height : WithBot ℕ∞)
  · rw [Ideal.height_eq_primeHeight]
    exact LTSeries.height_last_longestOf.symm.le
  · norm_cast
    exact height_mono hle

/-- For all `n ≤ dim R`, there exists a prime ideal `p` with `n ≤ ht p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff202cf852e6f58ca97e69df907b3de90b408e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
