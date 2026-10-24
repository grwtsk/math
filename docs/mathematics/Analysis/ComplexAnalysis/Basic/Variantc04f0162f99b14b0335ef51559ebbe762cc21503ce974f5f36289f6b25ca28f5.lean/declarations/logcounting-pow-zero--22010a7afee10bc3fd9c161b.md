# logCounting_pow_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5958a80-5f3f-d3dc-55ba-5dd4a274e9e8",
  "kind": "theorem",
  "lexical_name": "logCounting_pow_zero",
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
  "slug": "logcounting-pow-zero--22010a7afee10bc3fd9c161b",
  "source": {
    "blob": "2854bf929b57c6a507d0409df1173af03a909e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 632,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variantc04f0162f99b14b0335ef51559ebbe762cc21503ce974f5f36289f6b25ca28f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:22010a7afee10bc3fd9c161b7d7128cc3a6fe192f19c65745d9f87c8fe4b60d7",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Basic/Variantc04f0162f99b14b0335ef51559ebbe762cc21503ce974f5f36289f6b25ca28f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5958a80-5f3f-d3dc-55ba-5dd4a274e9e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 632–639.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem logCounting_pow_zero {f : 𝕜 → 𝕜} {n : ℕ} (hf : Meromorphic f) :
    logCounting (f ^ n) 0 = n • logCounting f 0 := by
  simp [logCounting, divisor_fun_pow hf.meromorphicOn n]

/--
For natural numbers `n`, the logarithmic counting function for the poles of `f ^ n` equals `n` times
the logarithmic counting function for the poles of `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Basic/Variantc04f0162f99b14b0335ef51559ebbe762cc21503ce974f5f36289f6b25ca28f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Basic/Variantc04f0162f99b14b0335ef51559ebbe762cc21503ce974f5f36289f6b25ca28f5.lean#L632).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2854bf929b57c6a507d0409df1173af03a909e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
