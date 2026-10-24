# associated_sub_one_map_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f1f3696af68f039f64535451d45b0df49514adf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a5c7ffa0076b038a293c125927d28e705fb0e47005b952d2275cd18a966260e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7ae34eee-037f-0145-e931-f38b84376c9b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1886db6a-ec88-e202-0a39-fb2773d372d9",
  "kind": "theorem",
  "lexical_name": "associated_sub_one_map_sub_one",
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
  "slug": "associated-sub-one-map-sub-one--d871a3a914cf559a2aa5679f",
  "source": {
    "blob": "9f1f3696af68f039f64535451d45b0df49514adf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 82,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant0a5c7ffa0076b038a293c125927d28e705fb0e47005b952d2275cd18a966260e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d871a3a914cf559a2aa5679f65fc3a5f6f9c0102be89ca39ea5309d70d24fdb3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant0a5c7ffa0076b038a293c125927d28e705fb0e47005b952d2275cd18a966260e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1886db6a-ec88-e202-0a39-fb2773d372d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem associated_sub_one_map_sub_one {n : ℕ} [NeZero n] (hζ : IsPrimitiveRoot ζ n)
    (σ : A ≃ₐ[R] A) : Associated (ζ - 1) (σ (ζ - 1)) := by
  rw [map_sub, map_one, ← hζ.autToPow_spec R σ]
  apply hζ.associated_sub_one_pow_sub_one_of_coprime
  exact ZMod.val_coe_unit_coprime ((autToPow R hζ) σ)

/-- Given an `n`-th primitive root of unity `ζ`, we have that two conjugates of `ζ - 1`
  are associated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant0a5c7ffa0076b038a293c125927d28e705fb0e47005b952d2275cd18a966260e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/CyclotomicUnits/Variant0a5c7ffa0076b038a293c125927d28e705fb0e47005b952d2275cd18a966260e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f1f3696af68f039f64535451d45b0df49514adf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
