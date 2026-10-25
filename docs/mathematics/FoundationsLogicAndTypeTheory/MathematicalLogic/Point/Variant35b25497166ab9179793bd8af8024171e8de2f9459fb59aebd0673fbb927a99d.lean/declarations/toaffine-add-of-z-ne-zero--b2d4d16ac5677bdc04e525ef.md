# toAffine_add_of_Z_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 473,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89972cd3-bf22-25a0-4391-15bae30bae4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b760655-bf01-3571-88c7-a6ec6486f21a",
  "kind": "lemma",
  "lexical_name": "toAffine_add_of_Z_ne_zero",
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
  "slug": "toaffine-add-of-z-ne-zero--b2d4d16ac5677bdc04e525ef",
  "source": {
    "blob": "e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 473,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2d4d16ac5677bdc04e525efcd92477b0d6de1c4fcb77ed95cff44dd197412bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b760655-bf01-3571-88c7-a6ec6486f21a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma toAffine_add_of_Z_ne_zero {P Q : Fin 3 → F} (hP : W.Nonsingular P)
    (hQ : W.Nonsingular Q) (hPz : P z ≠ 0) (hQz : Q z ≠ 0)
    (hxy : ¬(P x * Q z = Q x * P z ∧ P y * Q z = W.negY Q * P z)) : toAffine W
      ![W.toAffine.addX (P x / P z) (Q x / Q z)
          (W.toAffine.slope (P x / P z) (Q x / Q z) (P y / P z) (Q y / Q z)),
        W.toAffine.addY (P x / P z) (Q x / Q z) (P y / P z)
          (W.toAffine.slope (P x / P z) (Q x / Q z) (P y / P z) (Q y / Q z)),
        1] = toAffine W P + toAffine W Q := by
  rw [toAffine_some <| nonsingular_add_of_Z_ne_zero hP hQ hPz hQz hxy, toAffine_of_Z_ne_zero hP hPz,
    toAffine_of_Z_ne_zero hQ hQz,
    Affine.Point.add_some <| by rwa [← X_eq_iff hPz hQz, ← Y_eq_iff' hPz hQz]]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Point/Variant35b25497166ab9179793bd8af8024171e8de2f9459fb59aebd0673fbb927a99d.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9c642d6fa3a8d4861ca9e29fb3d9986aafcc7ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
