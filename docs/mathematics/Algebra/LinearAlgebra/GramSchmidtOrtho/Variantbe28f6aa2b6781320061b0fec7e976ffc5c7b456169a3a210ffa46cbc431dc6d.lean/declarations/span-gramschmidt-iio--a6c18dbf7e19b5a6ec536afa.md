# span_gramSchmidt_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fbe16bf-d7f9-9fed-de49-15d0cdc3a28e",
  "kind": "theorem",
  "lexical_name": "span_gramSchmidt_Iio",
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
  "slug": "span-gramschmidt-iio--a6c18dbf7e19b5a6ec536afa",
  "source": {
    "blob": "26cf34eee0498ed315fb94a9a4344a3d201420c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 156,
    "path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c18dbf7e19b5a6ec536afaf09b9a5ed954fd201d4c879f5f5f8fe45f6cb302",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fbe16bf-d7f9-9fed-de49-15d0cdc3a28e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_gramSchmidt_Iio (f : ι → E) (c : ι) :
    span 𝕜 (gramSchmidt 𝕜 f '' Set.Iio c) = span 𝕜 (f '' Set.Iio c) :=
  span_eq_span (Set.image_subset_iff.2 fun _ hi =>
    span_mono (image_subset _ <| Iic_subset_Iio.2 hi) <| gramSchmidt_mem_span _ _ le_rfl) <|
      Set.image_subset_iff.2 fun _ hi =>
        span_mono (image_subset _ <| Iic_subset_Iio.2 hi) <| mem_span_gramSchmidt _ _ le_rfl

/-- `gramSchmidt` preserves span of vectors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26cf34eee0498ed315fb94a9a4344a3d201420c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
