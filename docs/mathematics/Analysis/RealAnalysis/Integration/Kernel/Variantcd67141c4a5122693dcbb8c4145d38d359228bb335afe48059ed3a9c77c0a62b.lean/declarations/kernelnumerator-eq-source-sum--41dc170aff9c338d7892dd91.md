# kernelNumerator_eq_source_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aab4f419-5186-6865-5d79-da67c772d850",
  "kind": "lemma",
  "lexical_name": "kernelNumerator_eq_source_sum",
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
  "slug": "kernelnumerator-eq-source-sum--41dc170aff9c338d7892dd91",
  "source": {
    "blob": "17d67e9f4dd960a0ad958f13b18f253153d75489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 193,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41dc170aff9c338d7892dd9108ec2d7147e85d110652bf432eb70e1cf9520400",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aab4f419-5186-6865-5d79-da67c772d850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma kernelNumerator_eq_source_sum
    (k : ℕ) (w : ℂ) :
    kernelNumerator k w =
      ∑ j ∈ Finset.range (k + 1),
        (k.factorial : ℂ) / (k - j).factorial * w ^ (k - j) := by
  rw [kernelNumerator_eq_sum]
  simpa using
    (Finset.sum_range_reflect
      (fun j ↦ (k.factorial : ℂ) / j.factorial * w ^ j)
      (k + 1)).symm

/-- The recursive kernel is exactly the source syntax frozen in `Algebra.J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d67e9f4dd960a0ad958f13b18f253153d75489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
