# sphereNumerator_norm_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:189b6610-54ee-5d14-a41c-f4bbc58825ee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:508d8e2b-6eb4-65a1-c578-19c5ae8559b0",
  "kind": "theorem",
  "lexical_name": "sphereNumerator_norm_certificate",
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
  "slug": "spherenumerator-norm-certificate--ddd9e27fe5b66912b6007ae7",
  "source": {
    "blob": "5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 348,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddd9e27fe5b66912b6007ae7295f63c1f480464be9d4c418416d2d3d31365a63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508d8e2b-6eb4-65a1-c578-19c5ae8559b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sphereNumerator_norm_certificate
    {n : Nat} (b : StableBitfield n) :
    integerCarrierNormSq (sphereNumerator b) =
      sphereDenominator n ^ 2 := by
  have hsquares :
      (∑ i, (2 * centeredInt b i) ^ 2) = (4 : ℤ) * n := by
    calc
      (∑ i, (2 * centeredInt b i) ^ 2) = ∑ _i : Fin n, (4 : ℤ) := by
        apply Finset.sum_congr rfl
        intro i _
        rw [mul_pow, centeredInt_sq]
        norm_num
      _ = (4 : ℤ) * n := by simp [mul_comm]
  rw [integerCarrierNormSq, sphereNumerator, sphereDenominator, hsquares]
  push_cast
  ring

/-- Squared distance of two integer numerator carriers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BanachHilbert/Variant8666ab400827c00fa4c6d1701139ebd89b2ea895a6bc4c1f9fc81430eef4127d.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e1651b0f94ec3e7fbee24ee6134f00a1e4dfaf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
