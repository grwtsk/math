# actualSecondProfileCorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aed006f54a0894b8f1689fb0e619b936edadb48ede8119ec85ec9811ccf43a6f",
  "kind": "def",
  "lexical_name": "actualSecondProfileCorrelation",
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
  "slug": "actualsecondprofilecorrelation--1de6c912c543fb5e0ca0f5f9",
  "source": {
    "blob": "cb2c83bfb99f32fbfe88072f53c21c6ea28f405e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1de6c912c543fb5e0ca0f5f95f92fe440837f103dd56e1c46de7a330a641ae8a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aed006f54a0894b8f1689fb0e619b936edadb48ede8119ec85ec9811ccf43a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualSecondProfileCorrelation (A t : ℝ) : ℝ :=
  ∫ x : ℝ, actualSecondProfile A x * actualSecondProfile A (x - t)

/-- Square-energy transport retains both actual convolution factors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSecondProfileCorrelation/Variante61ff640e605b7942b764326caea375da2bdc2767605884ae5e973f89e735715.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb2c83bfb99f32fbfe88072f53c21c6ea28f405e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
