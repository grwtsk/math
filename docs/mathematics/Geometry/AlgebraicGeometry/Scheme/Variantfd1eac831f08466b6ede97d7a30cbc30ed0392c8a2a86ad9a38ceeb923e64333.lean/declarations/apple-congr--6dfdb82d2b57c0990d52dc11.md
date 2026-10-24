# appLE_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6c4978ca0c6e5ba7b14d3544e5ea590b760d8f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:463ea9d9-3251-0ec1-26c1-081149a3f5f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5af4e183-80f7-ffa7-0624-e6ff4da3e2ab",
  "kind": "lemma",
  "lexical_name": "appLE_congr",
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
  "slug": "apple-congr--6dfdb82d2b57c0990d52dc11",
  "source": {
    "blob": "b6c4978ca0c6e5ba7b14d3544e5ea590b760d8f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 230,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dfdb82d2b57c0990d52dc11b2c5d19deab16bf6648cedbbc9c3a375d991d195",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5af4e183-80f7-ffa7-0624-e6ff4da3e2ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma appLE_congr (e : V ≤ f ⁻¹ᵁ U) (e₁ : U = U') (e₂ : V = V')
    (P : ∀ {R S : CommRingCat.{u}} (_ : R ⟶ S), Prop) :
    P (f.appLE U V e) ↔ P (f.appLE U' V' (e₁ ▸ e₂ ▸ e)) := by
  subst e₁; subst e₂; rfl

/-- A morphism of schemes `f : X ⟶ Y` induces a local ring homomorphism from
`Y.presheaf.stalk (f x)` to `X.presheaf.stalk x` for any `x : X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantfd1eac831f08466b6ede97d7a30cbc30ed0392c8a2a86ad9a38ceeb923e64333.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c4978ca0c6e5ba7b14d3544e5ea590b760d8f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
