# nontrivial_of_isPushout_of_isField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "996a90f6a0d68d6b7653bd789fd0ca6fac2d101a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:05290967-a817-dc32-80de-5297078a5633",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c3905ae-96f0-c8e4-9906-8cd1f7369abc",
  "kind": "lemma",
  "lexical_name": "nontrivial_of_isPushout_of_isField",
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
  "slug": "nontrivial-of-ispushout-of-isfield--74826ae47adec4d39046854b",
  "source": {
    "blob": "996a90f6a0d68d6b7653bd789fd0ca6fac2d101a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 30,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearAlgebra/Variant06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74826ae47adec4d39046854b01ee2300de79610312cd3f99f5ded0531d82c631",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearAlgebra/Variant06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3905ae-96f0-c8e4-9906-8cd1f7369abc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nontrivial_of_isPushout_of_isField {A B C D : CommRingCat.{u}}
    (hA : IsField A) {f : A ⟶ B} {g : A ⟶ C} {inl : B ⟶ D} {inr : C ⟶ D}
    [Nontrivial B] [Nontrivial C]
    (h : IsPushout f g inl inr) : Nontrivial D := by
  let : Field A := hA.toField
  algebraize [f.hom, g.hom]
  let e : D ≅ ↧(B ⊗[A] C) :=
    IsColimit.coconePointUniqueUpToIso h.isColimit (CommRingCat.pushoutCoconeIsColimit A B C)
  let e' : D ≃ B ⊗[A] C := e.commRingCatIsoToRingEquiv.toEquiv
  exact e'.nontrivial

end CommRingCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearAlgebra/Variant06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearAlgebra/Variant06ed224c72dacff62d4af6133c71e7dfcbf083f7676ea1debddff724e78baec1.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `996a90f6a0d68d6b7653bd789fd0ca6fac2d101a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
