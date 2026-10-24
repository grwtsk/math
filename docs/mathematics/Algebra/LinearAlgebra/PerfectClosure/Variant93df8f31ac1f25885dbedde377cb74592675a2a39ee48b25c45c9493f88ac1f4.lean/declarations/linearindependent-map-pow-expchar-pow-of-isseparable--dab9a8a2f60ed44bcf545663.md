# LinearIndependent.map_pow_expChar_pow_of_isSeparable'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3166de4a719f136cdbed6671d899571828a3ebee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 362,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b62f497-49e6-e867-8e9f-2989fc66d5c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:80ea0777-72d9-84b4-720b-674e6863535d",
  "kind": "theorem",
  "lexical_name": "LinearIndependent.map_pow_expChar_pow_of_isSeparable'",
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
  "slug": "linearindependent-map-pow-expchar-pow-of-isseparable--dab9a8a2f60ed44bcf545663",
  "source": {
    "blob": "3166de4a719f136cdbed6671d899571828a3ebee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 362,
    "path": "GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dab9a8a2f60ed44bcf545663dade6e047de69218103c959c39d1ca583c73bc77",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80ea0777-72d9-84b4-720b-674e6863535d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearIndependent.map_pow_expChar_pow_of_isSeparable'
    (hsep : ∀ i : ι, IsSeparable F (v i))
    (h : LinearIndependent F v) : LinearIndependent F (v · ^ q ^ n) := by
  let E' := adjoin F (Set.range v)
  haveI : Algebra.IsSeparable F E' := (isSeparable_adjoin_iff_isSeparable F _).2 <| by
    rintro _ ⟨y, rfl⟩; exact hsep y
  let v' (i : ι) : E' := ⟨v i, subset_adjoin F _ ⟨i, rfl⟩⟩
  have h' : LinearIndependent F v' := h.of_comp E'.val.toLinearMap
  exact (h'.map_pow_expChar_pow_of_isSeparable q n).map'
    E'.val.toLinearMap (LinearMap.ker_eq_bot_of_injective E'.val.injective)

/-- If `E / F` is a separable extension of exponential characteristic `q`, if `{ u_i }` is an
`F`-basis of `E`, then `{ u_i ^ (q ^ n) }` is also an `F`-basis of `E`
for any natural number `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3166de4a719f136cdbed6671d899571828a3ebee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
