# simultaneous_impulse_mixed_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fdc2ccf-2725-05f6-3de8-7f0df4169c8c",
  "kind": "theorem",
  "lexical_name": "simultaneous_impulse_mixed_term",
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
  "slug": "simultaneous-impulse-mixed-term--557c75f67a1f7b1a526df15f",
  "source": {
    "blob": "04e34faf40a833efc0e90b332f6b545f88d5459f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557c75f67a1f7b1a526df15fd85c3fc9085c8774222148070b73fcda1a2b3523",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fdc2ccf-2725-05f6-3de8-7f0df4169c8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simultaneous_impulse_mixed_term (w z eta j t : ℝ) :
    w * (z + j + t) ^ 2 + eta * (z + j + t) - (w * z ^ 2 + eta * z) =
      2 * w * z * (j + t) + w * j ^ 2 + 2 * w * j * t + w * t ^ 2 +
        eta * (j + t) := by ring

end FormalResearch.RiemannHypothesis.SourceHybridStorage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variante0e3f6d71b57ed019a6b63a33047a8643ac5318d62ad2994627ed7cc357795cf.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04e34faf40a833efc0e90b332f6b545f88d5459f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
