# mulHom_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f1c178292fea844f8c1f47dddd63a29de85728e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02941a0f-a4b0-352a-8575-ee2c1839b477",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa3f3531-6d5f-ff0f-3fb7-94d824d57f31",
  "kind": "theorem",
  "lexical_name": "mulHom_preimage",
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
  "slug": "mulhom-preimage--a429bca2fd87b4f8e0ca218e",
  "source": {
    "blob": "7f1c178292fea844f8c1f47dddd63a29de85728e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a429bca2fd87b4f8e0ca218e7c9cff6014acf7ca8e72eb8b31ffdae7531f7037",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa3f3531-6d5f-ff0f-3fb7-94d824d57f31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulHom_preimage (f : G →ₙ* H) (hf : Function.Injective f) (a0 b0 : G) {A B : Finset H}
    (u : UniqueMul A B (f a0) (f b0)) :
    UniqueMul (A.preimage f (Set.injOn_of_injective hf _))
      (B.preimage f (Set.injOn_of_injective hf _)) a0 b0 := by
  intro a b ha hb ab
  simp only [← hf.eq_iff, map_mul] at ab ⊢
  exact u (Finset.mem_preimage.mp ha) (Finset.mem_preimage.mp hb) ab
#align unique_mul.mul_hom_preimage UniqueMul.mulHom_preimage
#align unique_add.add_hom_preimage UniqueAdd.addHom_preimage

/-- `Unique_Mul` is preserved under multiplicative maps that are injective.

See `UniqueMul.mulHom_map_iff` for a version with swapped bundling. -/
@[to_additive
      "`UniqueAdd` is preserved under additive maps that are injective.

See `UniqueAdd.addHom_map_iff` for a version with swapped bundling."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/UniqueProds/Variantbb7cd2fa78ec70687be9378651419fe2ad50017d6bf637e47a84891a6e8430a3.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1c178292fea844f8c1f47dddd63a29de85728e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
