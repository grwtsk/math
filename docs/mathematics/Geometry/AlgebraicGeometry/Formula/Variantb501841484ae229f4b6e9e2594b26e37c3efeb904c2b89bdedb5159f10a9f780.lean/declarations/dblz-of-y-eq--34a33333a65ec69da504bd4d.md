# dblZ_of_Y_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad6216cad2e4e296e4b327093a169c12f1535c32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c549d83b-05b6-f8fe-da14-45fb15661b71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c6d41de1-3dfc-3e9a-93d2-cb6a6de0b19f",
  "kind": "lemma",
  "lexical_name": "dblZ_of_Y_eq",
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
  "slug": "dblz-of-y-eq--34a33333a65ec69da504bd4d",
  "source": {
    "blob": "ad6216cad2e4e296e4b327093a169c12f1535c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 204,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34a33333a65ec69da504bd4db692ca7e00dcd63251cd6e5204df8a6ccd0cc4f1",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6d41de1-3dfc-3e9a-93d2-cb6a6de0b19f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dblZ_of_Y_eq [NoZeroDivisors R] {P Q : Fin 3 → R} (hQz : Q z ≠ 0) (hx : P x * Q z = Q x * P z)
    (hy : P y * Q z = Q y * P z) (hy' : P y * Q z = W'.negY Q * P z) : W'.dblZ P = 0 := by
  rw [dblZ, Y_eq_negY_of_Y_eq hQz hx hy hy', sub_self, zero_pow three_ne_zero, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variantb501841484ae229f4b6e9e2594b26e37c3efeb904c2b89bdedb5159f10a9f780.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad6216cad2e4e296e4b327093a169c12f1535c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
