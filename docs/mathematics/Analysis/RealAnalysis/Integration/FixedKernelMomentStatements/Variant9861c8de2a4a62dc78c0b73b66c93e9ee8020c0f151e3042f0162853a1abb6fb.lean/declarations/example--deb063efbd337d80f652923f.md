# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:473b176d0a8f63e01f6f2980c1b1f9c5e0eb02c96181e9bf4d8953258b04a337",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--deb063efbd337d80f652923f",
  "source": {
    "blob": "33c4819098a09041062ef80ad7a9d717c31571bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:deb063efbd337d80f652923fc7aae7ad3fd77cc7f7830b1c0beede50b176b1a3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:473b176d0a8f63e01f6f2980c1b1f9c5e0eb02c96181e9bf4d8953258b04a337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (t : ℝ) (ht : 2 ≤ t) :
    IntegrableOn (fun x : ℝ => Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) (Ioi 1) ∧
    (∫ x in Ioi (1 : ℝ), Real.exp (-Real.log x / 2) *
      normalizedTest explicitSecondDerivative 1 (t - 1 - Real.log x)) = 0 :=
  logSample_integrableOn_and_integral_zero t ht
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentStatements/Variant9861c8de2a4a62dc78c0b73b66c93e9ee8020c0f151e3042f0162853a1abb6fb.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33c4819098a09041062ef80ad7a9d717c31571bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
