# lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13587924d6d86ec85102dc1b348baef384246a626b0bb844a9ece15aa2c7e1c7",
  "kind": "def",
  "lexical_name": "lift",
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
  "slug": "lift--dc4c0bbfb798e19c769fac6a",
  "source": {
    "blob": "f70802d1aaab695449949288fd5f57b427d2c6b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 150,
    "path": "GRWTSK/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dc4c0bbfb798e19c769fac6add9c4dec3ac5d8d6076def79cd97d58c879a4194",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13587924d6d86ec85102dc1b348baef384246a626b0bb844a9ece15aa2c7e1c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def lift : (∀ i, M i →* N) ≃ (CoprodI M →* N) where
  toFun fi :=
    Con.lift _ (FreeMonoid.lift fun p : Σi, M i => fi p.fst p.snd) <|
      Con.conGen_le <| by
        simp_rw [Con.rel_eq_coe, Con.ker_rel]
        rintro _ _ (i | ⟨x, y⟩)
        · change FreeMonoid.lift _ (FreeMonoid.of _) = FreeMonoid.lift _ 1
          simp only [MonoidHom.map_one, FreeMonoid.lift_eval_of]
        · change
            FreeMonoid.lift _ (FreeMonoid.of _ * FreeMonoid.of _) =
              FreeMonoid.lift _ (FreeMonoid.of _)
          simp only [MonoidHom.map_mul, FreeMonoid.lift_eval_of]
  invFun f i := f.comp of
  left_inv := by
    intro fi
    ext i x
    rw [MonoidHom.comp_apply, of_apply, Con.lift_mk', FreeMonoid.lift_eval_of]
  right_inv := by
    intro f
    ext i x
    rfl
#align free_product.lift Monoid.CoprodI.lift

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CoprodI/Variant1ebd6d4121afb504d558087cf7f6eb2d66b79b640434a2a2b2238fbdbf99f707.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70802d1aaab695449949288fd5f57b427d2c6b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
