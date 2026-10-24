# DiracSpectrumMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c5828b413d76b37d15ced445163527256c595f3850983ac06c49dc4db3d3e55a",
  "kind": "structure",
  "lexical_name": "DiracSpectrumMorphism",
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
  "slug": "diracspectrummorphism--e3a2b7a1c7d82787fd12e441",
  "source": {
    "blob": "edb3359c27eb5af99981718be6c91924a5cbe7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3a2b7a1c7d82787fd12e441f2f0921e8441c910dbc4eed6dc63436c384d6783",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c5828b413d76b37d15ced445163527256c595f3850983ac06c49dc4db3d3e55a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DiracSpectrumMorphism
    (X Y : DiracSpectrumObject) where
  mapLabel : String
  preservesEigenvalues : Prop
  preservesEigenvalues_certified : preservesEigenvalues
  preservesMultiplicity : Prop
  preservesMultiplicity_certified : preservesMultiplicity
  compatibleWithTensorCarrier : Prop
  compatibleWithTensorCarrier_certified : compatibleWithTensorCarrier

/--
A category-like interface whose objects are Dirac spectrum objects.

This is deliberately contract-level. It avoids forcing Mathlib category
instances into the low-level spectral tensor layer.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant4c0281b96d88b1455ef159608be5d85110fc4cfb767ad79b7bf010ec4c2fd900.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edb3359c27eb5af99981718be6c91924a5cbe7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
