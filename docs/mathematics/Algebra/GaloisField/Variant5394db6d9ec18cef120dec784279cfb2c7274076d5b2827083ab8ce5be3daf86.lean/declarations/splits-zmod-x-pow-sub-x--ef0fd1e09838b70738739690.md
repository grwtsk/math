# splits_zmod_X_pow_sub_X

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 151,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:28214c38-7eeb-2900-eebb-1022e98e9871",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0f1654a-b14e-5bae-6b85-05fb7de9a550",
  "kind": "theorem",
  "lexical_name": "splits_zmod_X_pow_sub_X",
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
  "slug": "splits-zmod-x-pow-sub-x--ef0fd1e09838b70738739690",
  "source": {
    "blob": "d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 151,
    "path": "GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef0fd1e09838b70738739690119fab447b4cc1fa08d0478ebfe7c2a68f3e6b7c",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0f1654a-b14e-5bae-6b85-05fb7de9a550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem splits_zmod_X_pow_sub_X : Splits (RingHom.id (ZMod p)) (X ^ p - X) := by
  have hp : 1 < p := h_prime.out.one_lt
  have h1 : roots (X ^ p - X : (ZMod p)[X]) = Finset.univ.val := by
    convert FiniteField.roots_X_pow_card_sub_X (ZMod p)
    exact (ZMod.card p).symm
  have h2 := FiniteField.X_pow_card_sub_X_natDegree_eq (ZMod p) hp
  -- We discharge the `p = 0` separately, to avoid typeclass issues on `ZMod p`.
  cases p; cases hp
  rw [splits_iff_card_roots, h1, ← Finset.card_def, Finset.card_univ, h2, ZMod.card]
set_option linter.uppercaseLean3 false in
#align galois_field.splits_zmod_X_pow_sub_X GaloisField.splits_zmod_X_pow_sub_X

/-- A Galois field with exponent 1 is equivalent to `ZMod` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Variant5394db6d9ec18cef120dec784279cfb2c7274076d5b2827083ab8ce5be3daf86.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6c9ce46b6fcf3f72c117e0cc1b30c3ffa3557a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
