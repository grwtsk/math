# adjoin_eq_of_isAlgebraic_of_isSeparable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1e3a59f-e406-078f-a30c-e259f60e7e1b",
  "kind": "lemma",
  "lexical_name": "adjoin_eq_of_isAlgebraic_of_isSeparable",
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
  "slug": "adjoin-eq-of-isalgebraic-of-isseparable--740d50d41c0d2835cdaa607a",
  "source": {
    "blob": "7c8c494efd09d25d59173f9236b665567d09b467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 578,
    "path": "GRWTSK/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:740d50d41c0d2835cdaa607a34fad97f99d3c2da1a8aa1f678682fda0461315a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1e3a59f-e406-078f-a30c-e259f60e7e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 578–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma adjoin_eq_of_isAlgebraic_of_isSeparable [Algebra.IsAlgebraic F E]
    [Algebra.IsSeparable E K] : adjoin E (separableClosure F K : Set K) = ⊤ :=
  top_unique fun x _ ↦ by
    set S := separableClosure F K
    set L := adjoin E (S : Set K)
    have := Algebra.isSeparable_tower_top_of_isSeparable E L K
    let i : S →+* L := Subsemiring.inclusion fun x hx ↦ subset_adjoin E (S : Set K) hx
    let _ : Algebra S L := i.toAlgebra
    let _ : SMul S L := Algebra.toSMul
    have : IsScalarTower S L K := IsScalarTower.of_algebraMap_eq (congrFun rfl)
    have := Algebra.IsAlgebraic.trans F E K
    have : IsPurelyInseparable S K := separableClosure.isPurelyInseparable F K
    have := IsPurelyInseparable.tower_top S L K
    obtain ⟨y, rfl⟩ := IsPurelyInseparable.surjective_algebraMap_of_isSeparable L K x
    exact y.2

/-- If `K / E / F` is a field extension tower, such that `E / F` is algebraic, then
`E` adjoin `separableClosure F K` is equal to `separableClosure E K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf8eaad8d85f36288eb646f9ced046d2161320f434629e66f0fa972e892d461a5.lean#L578).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c8c494efd09d25d59173f9236b665567d09b467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
