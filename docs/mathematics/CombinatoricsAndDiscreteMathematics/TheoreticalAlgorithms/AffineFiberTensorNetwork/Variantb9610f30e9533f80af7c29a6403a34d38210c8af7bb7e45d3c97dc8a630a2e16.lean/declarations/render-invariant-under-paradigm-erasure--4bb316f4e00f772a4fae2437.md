# render_invariant_under_paradigm_erasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a821b6c0-c77a-8906-583a-ce77a2740bc3",
  "kind": "theorem",
  "lexical_name": "render_invariant_under_paradigm_erasure",
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
  "slug": "render-invariant-under-paradigm-erasure--4bb316f4e00f772a4fae2437",
  "source": {
    "blob": "6d7f65df08e914547b130a9e4a65ba7a2a45d963",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variantb9610f30e9533f80af7c29a6403a34d38210c8af7bb7e45d3c97dc8a630a2e16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bb316f4e00f772a4fae2437d0d2fffcd64bfce011073e07df4d2a7843d3e6f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variantb9610f30e9533f80af7c29a6403a34d38210c8af7bb7e45d3c97dc8a630a2e16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a821b6c0-c77a-8906-583a-ce77a2740bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem render_invariant_under_paradigm_erasure
    {Image : Type v}
    {O : ObservationOperator R Image}
    {P Q : RenderingParadigm}
    {A : ParadigmRealization R P}
    {B : ParadigmRealization R Q}
    (h : SameUnderlyingSection A B) :
    O A.radianceSection = O B.radianceSection :=
  observation_eq_of_same_section h

/--
Finite tensor-network form of one image: pixels × atoms × modes × color.
`K` stores visibility/transmittance/opacity gates, `A` stores angular coefficients,
and `Y` stores harmonic evaluation at each pixel direction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variantb9610f30e9533f80af7c29a6403a34d38210c8af7bb7e45d3c97dc8a630a2e16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AffineFiberTensorNetwork/Variantb9610f30e9533f80af7c29a6403a34d38210c8af7bb7e45d3c97dc8a630a2e16.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d7f65df08e914547b130a9e4a65ba7a2a45d963` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
