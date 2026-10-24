# baseChange_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7a8ba6f4-ec23-c8b6-1597-375daa85835d",
  "kind": "lemma",
  "lexical_name": "baseChange_span",
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
  "slug": "basechange-span--910290a78ab7090fafa3f7d6",
  "source": {
    "blob": "673fe72784c3de8d32f0d53ad3a81ab369440e55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 869,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:910290a78ab7090fafa3f7d6eaede367025f4607aabdd3f6d43a455140eedc0f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7a8ba6f4-ec23-c8b6-1597-375daa85835d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 869–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma baseChange_span (s : Set M) :
    (span R s).baseChange A = span A (TensorProduct.mk R A M 1 '' s) := by
  rw [baseChange_eq_span, map_span, span_span_of_tower]

/-- Given an `R`-submodule `p` of `M`, and `R`-algebra `A`, we obtain an `A`-submodule of
`A ⊗[R] M` by `p.baseChange A`. This is then the surjective `A`-linear map
`A ⊗[R] M → p.baseChange A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tower/Variant9fa5a18001bd753ee3106de1084a4bb30b9f35fe8770e89d078dac2018160be9.lean#L869).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `673fe72784c3de8d32f0d53ad3a81ab369440e55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
