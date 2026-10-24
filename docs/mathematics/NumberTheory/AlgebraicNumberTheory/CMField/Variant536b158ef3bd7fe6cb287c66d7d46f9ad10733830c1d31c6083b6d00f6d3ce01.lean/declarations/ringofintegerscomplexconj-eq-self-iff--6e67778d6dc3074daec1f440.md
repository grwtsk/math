# ringOfIntegersComplexConj_eq_self_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c7067617742aae433a648031822e84a41746b4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8739d6c-4ef5-e9cb-990a-a42a7ca2c567",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee4b2eac-a973-7e39-3737-fe680f8d5eda",
  "kind": "theorem",
  "lexical_name": "ringOfIntegersComplexConj_eq_self_iff",
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
  "slug": "ringofintegerscomplexconj-eq-self-iff--6e67778d6dc3074daec1f440",
  "source": {
    "blob": "6c7067617742aae433a648031822e84a41746b4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 245,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e67778d6dc3074daec1f440c6e12a10bea69671fae2bb0ca0259700073098c3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4b2eac-a973-7e39-3737-fe680f8d5eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ringOfIntegersComplexConj_eq_self_iff (x : 𝓞 K) :
    ringOfIntegersComplexConj K x = x ↔ x ∈ Set.range (algebraMap (𝓞 K⁺) (𝓞 K)) := by
  refine ⟨fun h ↦ ?_, ?_⟩
  · rw [RingOfIntegers.ext_iff, coe_ringOfIntegersComplexConj,
      RingOfIntegers.complexConj_eq_self_iff] at h
    obtain ⟨y, hy⟩ := h
    exact ⟨y, RingOfIntegers.ext_iff.mpr hy⟩
  · rintro ⟨y, rfl⟩
    simp

end complexConj

section units

open NumberField.Units

/--
The complex conjugation as an isomorphism of the units of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7067617742aae433a648031822e84a41746b4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
