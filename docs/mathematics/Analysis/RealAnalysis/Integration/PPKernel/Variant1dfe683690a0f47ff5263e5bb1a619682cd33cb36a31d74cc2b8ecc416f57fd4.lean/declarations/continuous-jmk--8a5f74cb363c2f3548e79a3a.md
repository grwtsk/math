# continuous_JmK

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d37693f6-89c5-7f5a-f6ef-b1b54d948f7d",
  "kind": "lemma",
  "lexical_name": "continuous_JmK",
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
  "slug": "continuous-jmk--8a5f74cb363c2f3548e79a3a",
  "source": {
    "blob": "7c75669277cd28f7712457d57bb96fdc692ec435",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 301,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5f74cb363c2f3548e79a3a4399557f918f95ab493d7a5e18dc382f174a86c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d37693f6-89c5-7f5a-f6ef-b1b54d948f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuous_JmK (T y y' : ℝ) : Continuous (JmK T y y') := by
  unfold JmK; exact continuous_Jker_offset _ _ _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PPKernel/Variant1dfe683690a0f47ff5263e5bb1a619682cd33cb36a31d74cc2b8ecc416f57fd4.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c75669277cd28f7712457d57bb96fdc692ec435` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
