# cauchySeq_finset_of_norm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c859437-a8b0-360e-560b-b8e736a46277",
  "kind": "theorem",
  "lexical_name": "cauchySeq_finset_of_norm_bounded",
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
  "slug": "cauchyseq-finset-of-norm-bounded--a5cabd2a576309e36a7a92fc",
  "source": {
    "blob": "917507223eb1a3ba06e32752489519da3cce124f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5cabd2a576309e36a7a92fc2f14c947c560f6735d44bab15668a4ce0f8bc041",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c859437-a8b0-360e-560b-b8e736a46277`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cauchySeq_finset_of_norm_bounded {f : ι → E} {g : ι → ℝ} (hg : Summable g)
    (h : ∀ i, ‖f i‖ ≤ g i) : CauchySeq fun s : Finset ι => ∑ i ∈ s, f i :=
  cauchySeq_finset_of_norm_bounded_eventually hg <| Eventually.of_forall h

/-- A version of the **direct comparison test** for conditionally convergent series.
See `cauchySeq_finset_of_norm_bounded` for the same statement about absolutely convergent ones. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant703ae024c3b17c8b5d52df0fefbb73153e91d43cec6174c0db388e7e1e87d681.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917507223eb1a3ba06e32752489519da3cce124f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
