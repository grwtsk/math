# logarithmicWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55e19bb38ae5dbcd43c17b1090dee15f125b22941b2654c05f98fc0d9ecf8a5d",
  "kind": "def",
  "lexical_name": "logarithmicWeight",
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
  "slug": "logarithmicweight--21610195955f74d8d032b52e",
  "source": {
    "blob": "07fe4128d227ff863f1748a14d9497f35c3c70ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21610195955f74d8d032b52e847a767ff450a8050b5a01c3b8f02d31aeb09fb4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55e19bb38ae5dbcd43c17b1090dee15f125b22941b2654c05f98fc0d9ecf8a5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def logarithmicWeight (ξ : ℝ) : ℝ := 1 + Real.log (1 + 4 * ξ ^ 2) / 2

/-- The weighted Fourier square integral before the fixed source normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicNormProbe/Variant14adc00fc4768601c828b954ca5a11fde64206a5a8d3e200eb569cdaa392217f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07fe4128d227ff863f1748a14d9497f35c3c70ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
