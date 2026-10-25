# Equiv.Perm.prod_Ioi_comp_eq_sign_mul_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "62a614e19fc5041af7000302053d9c4ee1c61aa0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 325,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c16ef94-5a8d-a602-d845-c5ef28a0af9c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ece13e60-8af3-31a8-6427-89750e7f62df",
  "kind": "theorem",
  "lexical_name": "Equiv.Perm.prod_Ioi_comp_eq_sign_mul_prod",
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
  "slug": "equiv-perm-prod-ioi-comp-eq-sign-mul-prod--98e7ae6e8d570d7fc82fa4e3",
  "source": {
    "blob": "62a614e19fc5041af7000302053d9c4ee1c61aa0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 325,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e7ae6e8d570d7fc82fa4e3262ebada85f68611cda1e589ce33d7d5a0f10482",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ece13e60-8af3-31a8-6427-89750e7f62df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Equiv.Perm.prod_Ioi_comp_eq_sign_mul_prod {R : Type*} [CommRing R]
    (σ : Equiv.Perm (Fin n)) {f : Fin n → Fin n → R} (hf : ∀ i j, f i j = -f j i) :
    ∏ i, ∏ j ∈ Finset.Ioi i, f (σ i) (σ j) = σ.sign * ∏ i, ∏ j ∈ Finset.Ioi i, f i j := by
  convert σ.prod_Iio_comp_eq_sign_mul_prod hf using 1
  · apply Finset.prod_comm' (by simp)
  convert rfl using 2
  apply Finset.prod_comm' (by simp)

end Sign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant89ebd51a2de48115a52ba28788fa1aa6caf6e55dde5ea6c40b52cfc6b24435f6.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62a614e19fc5041af7000302053d9c4ee1c61aa0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
