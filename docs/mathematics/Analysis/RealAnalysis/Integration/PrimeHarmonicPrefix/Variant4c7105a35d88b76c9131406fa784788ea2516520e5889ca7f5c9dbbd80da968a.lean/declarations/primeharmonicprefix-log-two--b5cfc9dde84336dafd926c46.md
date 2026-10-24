# primeHarmonicPrefix_log_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84cba47f-8cdf-78b0-61ec-504ac3d61851",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:968f4a84-5bcc-5dce-9a71-20167fdac08f",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_log_two",
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
  "slug": "primeharmonicprefix-log-two--b5cfc9dde84336dafd926c46",
  "source": {
    "blob": "7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5cfc9dde84336dafd926c461c797c4f21d560e31b28757ccb7c180870f31e54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:968f4a84-5bcc-5dce-9a71-20167fdac08f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_log_two : primeHarmonicPrefix (Real.log 2) = Real.log 2 / 2 := by
  rw [primeHarmonicPrefix_eq_log_sum, Real.exp_log (by norm_num : (0 : ℝ) < 2)]
  norm_num [Finset.filter_singleton, Nat.prime_two]

/-- The centered theta error retains its nonzero lower endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefix/Variant4c7105a35d88b76c9131406fa784788ea2516520e5889ca7f5c9dbbd80da968a.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f76186c9f6d7aa9724f2adaf5fdf3b5a8953482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
