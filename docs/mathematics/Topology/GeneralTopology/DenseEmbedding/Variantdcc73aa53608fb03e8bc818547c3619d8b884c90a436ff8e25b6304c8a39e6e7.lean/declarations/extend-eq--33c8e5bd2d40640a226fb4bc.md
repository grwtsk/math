# extend_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cb6a2e9-2533-f425-60c6-ad74f0fcdf97",
  "kind": "theorem",
  "lexical_name": "extend_eq",
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
  "slug": "extend-eq--33c8e5bd2d40640a226fb4bc",
  "source": {
    "blob": "70612eb0eb555b17815e744a679f4741e07d9717",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c8e5bd2d40640a226fb4bc09a7a62b7e858ab8854d094107f36a1c73fe6089",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cb6a2e9-2533-f425-60c6-ad74f0fcdf97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem extend_eq [T2Space γ] (di : IsDenseInducing i) {f : α → γ} (hf : Continuous f) (a : α) :
    di.extend f (i a) = f a :=
  di.extend_eq_at hf.continuousAt

/-- Variation of `extend_eq` where we ask that `f` has a limit along `comap i (𝓝 b)` for each
`b : β`. This is a strictly stronger assumption than continuity of `f`, but in a lot of cases
you'd have to prove it anyway to use `continuous_extend`, so this avoids doing the work twice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variantdcc73aa53608fb03e8bc818547c3619d8b884c90a436ff8e25b6304c8a39e6e7.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70612eb0eb555b17815e744a679f4741e07d9717` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
