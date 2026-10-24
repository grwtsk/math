# reflectedEnvelope_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60cbeb11-042d-1446-c1b9-017ff11fdd35",
  "kind": "theorem",
  "lexical_name": "reflectedEnvelope_integrable",
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
  "slug": "reflectedenvelope-integrable--98cbf2c3b94d1ff722048da5",
  "source": {
    "blob": "9a480cb2c4e351d9eb83df40b098998bc58395a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98cbf2c3b94d1ff722048da5346fcc8164fcb470e2cafdec5d8a103a6614a055",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60cbeb11-042d-1446-c1b9-017ff11fdd35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedEnvelope_integrable :
    IntegrableOn reflectedEnvelope (Ioi (0:ℝ)) := by
  have h := ((expHalfMoment_integrable 9).add ((expHalfMoment_integrable 8).const_mul 36)).add
    ((expHalfMoment_integrable 7).const_mul 288)
  have hh := h.const_mul (2431/896:ℝ)
  apply hh.congr_fun _ measurableSet_Ioi
  intro y _
  unfold reflectedEnvelope
  ring

/-- Exact mass of the independently specified, genuinely integrable positive envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveMassAttempt01/Varianta1b3b27065ba135bde0cb55ce2cd4224aad92b97b22a226d9b2b35abcf0e4d45.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a480cb2c4e351d9eb83df40b098998bc58395a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
