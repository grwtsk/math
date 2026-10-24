# toPresheafFiber_eq_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48719e3a-a9a6-c3ab-1efb-e5c19b3203c2",
  "kind": "lemma",
  "lexical_name": "toPresheafFiber_eq_iff'",
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
  "slug": "topresheaffiber-eq-iff--60317eac20fa9d1b61b1c7e2",
  "source": {
    "blob": "8779ecc425a08aafddbb26e9b9c238de2476061c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60317eac20fa9d1b61b1c7e2342e6bb906b36ddb60532c1d49e8addb1b578eb9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48719e3a-a9a6-c3ab-1efb-e5c19b3203c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toPresheafFiber_eq_iff' (X : C) (x : Φ.fiber.obj X) (z₁ z₂ : ToType (P.obj (op X))) :
    Φ.toPresheafFiber X x P z₁ = Φ.toPresheafFiber X x P z₂ ↔
      ∃ (Y : C) (f : Y ⟶ X) (y : Φ.fiber.obj Y), Φ.fiber.map f y = x ∧
        P.map f.op z₁ = P.map f.op z₂ := by
  refine ((colimit.isColimit ((Functor.Elements.π Φ.fiber).op ⋙ P)).eq_iff' ..).trans ?_
  constructor
  · rintro ⟨_, ⟨f, hf⟩, hf'⟩
    exact ⟨_, f, _, hf, hf'⟩
  · rintro ⟨Y, f, y, hf, hf'⟩
    exact ⟨op (Functor.elementsMk _ _ y), ⟨f, hf⟩, hf'⟩

variable (f : P ⟶ Q)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9753036c22d2468c001a22056ef697d51587e97423c57d8238d67ebc36d4f768.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8779ecc425a08aafddbb26e9b9c238de2476061c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
