# mod_to_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1757,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7513a9f1-924a-e8b9-a8aa-85f8416abc48",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2c564cd-3232-66b6-823f-ecc6adcd007a",
  "kind": "theorem",
  "lexical_name": "mod_to_int",
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
  "slug": "mod-to-int--2d56f60ea272e22539bbbb9d",
  "source": {
    "blob": "9d994018140cdf6730f774bce62e8beb65f43f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1770,
    "line": 1757,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d56f60ea272e22539bbbb9d9780b5ff3d097bf06dfa80e52e6beece612f3995",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2c564cd-3232-66b6-823f-ecc6adcd007a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1757–1770.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mod_to_int : ∀ n d, ((n % d : ZNum) : ℤ) = n % d
  | 0, d => (Int.zero_emod _).symm
  | pos n, d =>
    (Num.cast_toZNum _).trans <| by
      rw [← Num.to_nat_to_int, cast_pos, Num.mod_to_nat, ← PosNum.to_nat_to_int, abs_to_nat]
      rfl
  | neg n, d =>
    (Num.cast_sub' _ _).trans <| by
      rw [← Num.to_nat_to_int, cast_neg, ← Num.to_nat_to_int, Num.succ_to_nat, Num.mod_to_nat,
          abs_to_nat, ← Int.subNatNat_eq_coe, n.to_int_eq_succ_pred]
      rfl
#align znum.mod_to_int ZNum.mod_to_int

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant1cee83e951946347bf3260ab1c81f5358b0eb5d6f881032959c5bc4a8c2ff924.lean#L1757).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d994018140cdf6730f774bce62e8beb65f43f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
