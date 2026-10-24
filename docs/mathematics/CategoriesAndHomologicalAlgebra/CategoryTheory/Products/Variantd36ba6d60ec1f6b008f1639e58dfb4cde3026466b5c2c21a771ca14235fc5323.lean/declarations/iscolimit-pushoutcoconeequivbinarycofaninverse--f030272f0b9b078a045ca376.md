# IsColimit.pushoutCoconeEquivBinaryCofanInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69f4c3b89e236bc770f92a0b1c2f0a9588b199631ef3b174417188ff41fac772",
  "kind": "def",
  "lexical_name": "IsColimit.pushoutCoconeEquivBinaryCofanInverse",
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
  "slug": "iscolimit-pushoutcoconeequivbinarycofaninverse--f030272f0b9b078a045ca376",
  "source": {
    "blob": "adf58ab901341a543e06ea33c6378a120edc42a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f030272f0b9b078a045ca37648aec895ba7d2972c8a7484b656ea6cc69fe6561",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69f4c3b89e236bc770f92a0b1c2f0a9588b199631ef3b174417188ff41fac772`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsColimit.pushoutCoconeEquivBinaryCofanInverse {c : BinaryCofan (Under.mk f) (.mk g)}
    (hc : IsColimit c) : IsColimit <| pushoutCoconeEquivBinaryCofan.inverse.obj c :=
  PushoutCocone.IsColimit.mk
    (c.inl.w.trans c.inr.w.symm)
    (fun s ↦ (hc.desc <| pushoutCoconeEquivBinaryCofan.functor.obj s).right)
    (fun s ↦ by simpa only using! congr($(hc.fac _ _).right))
    (fun s ↦ by simpa only using! congr($(hc.fac _ _).right))
    <| fun s m hm₁ hm₂ ↦ by
      change PushoutCocone f g at s
      have := hc.uniq (pushoutCoconeEquivBinaryCofan.functor.obj s) (Under.homMk m <| by
        simp [← hm₁, dsimp% c.inl.w_assoc])
        (by rintro (_ | _) <;> ext <;> simpa)
      exact congr(($this).right)

end Under
end Limits

namespace Over
section BinaryProduct
variable {X : C} {Y Z : Over X}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantd36ba6d60ec1f6b008f1639e58dfb4cde3026466b5c2c21a771ca14235fc5323.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adf58ab901341a543e06ea33c6378a120edc42a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
