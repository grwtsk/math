# DiracSpectrumMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4728cd6770a3ea71ffd79cdf2fd646b87f330afcc4347324f51dc4c638b327d9",
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
  "slug": "diracspectrummorphism--ff0f481ab8a6b97c93a5516b",
  "source": {
    "blob": "f3592af0738d4f72c63c2a9af3372c63a8350526",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 24,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff0f481ab8a6b97c93a5516bc42cdaf744907297fbff2119387bca6c40ce3a27",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4728cd6770a3ea71ffd79cdf2fd646b87f330afcc4347324f51dc4c638b327d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–39.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/CategoricalSpectrum/Variant5ce15204e32f4ca418e148fc0cd5ea70b57aeda3316ccecefae299f03d8ef2a7.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3592af0738d4f72c63c2a9af3372c63a8350526` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
