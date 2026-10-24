# primeSquare_not_higher

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "67d3417faa4518d8fecf312a044721577f47b3ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9efb5a5-6eb8-abb1-89ab-15093c596dad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07caf66a-a450-e9e4-e41e-832ac4e2e370",
  "kind": "theorem",
  "lexical_name": "primeSquare_not_higher",
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
  "slug": "primesquare-not-higher--021370d5da0ededfd58aa162",
  "source": {
    "blob": "67d3417faa4518d8fecf312a044721577f47b3ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 37,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:021370d5da0ededfd58aa1622f9b762b06ffa6c772cee8b1abbf685a8cd031e2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07caf66a-a450-e9e4-e41e-832ac4e2e370`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquare_not_higher (n : ℕ) (hs : IsPrimeSquare n) : ¬IsHigherPrimePower n := by
  rintro ⟨q, k, hq, hk, hqn⟩
  obtain ⟨p, hp, hpn⟩ := hs
  have h := prime_power_representation_unique p q 2 k hp hq (by norm_num) (by omega)
    (hpn.trans hqn.symm)
  omega

/-- A genuine prime square is composite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsum/Variantf1feeacc10f239e71d5fd341156335e5038490d62880c4ad79b6a1c4e2865537.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67d3417faa4518d8fecf312a044721577f47b3ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
