# ringConvolution_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fccca904-fbe3-0beb-5c14-9ffe412ceff4",
  "kind": "lemma",
  "lexical_name": "ringConvolution_single",
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
  "slug": "ringconvolution-single--0f950448733eb6a1dcc174c4",
  "source": {
    "blob": "7de72f1d982b8ce1a57189f79d97c9d1d7b2427c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 354,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f950448733eb6a1dcc174c4f35406b63b43a034a77066f127944006c6a869d6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fccca904-fbe3-0beb-5c14-9ffe412ceff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 354–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringConvolution_single [DecidableEq M] (f : M → R) :
    f ⋆ᵣ (Pi.single 1 1) = f := by
  simpa only [ringConvolution] using convolution_single (.mul ℕ R) 1 f (by simp)

end RingConvolutionIdentity

section RingConvolutionDistributivity

variable [Monoid M] [NonUnitalNonAssocSemiring R]
variable [TopologicalSpace R] [T2Space R] [ContinuousAdd R]

@[to_additive (dont_translate := R) addRingConvolution_add]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DiscreteConvolution/Variant3752a31b5256203965479ea5ccf2bf2ad4b4b0a29d4b15af26151480e67e1aec.lean#L354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de72f1d982b8ce1a57189f79d97c9d1d7b2427c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
