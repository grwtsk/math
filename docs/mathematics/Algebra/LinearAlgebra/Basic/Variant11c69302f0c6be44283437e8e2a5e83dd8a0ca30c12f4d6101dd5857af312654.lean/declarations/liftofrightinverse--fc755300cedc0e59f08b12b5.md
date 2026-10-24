# liftOfRightInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:695dff419306205d552cc7d70d8b4a9ef8f4f961c0879471608a85572016486c",
  "kind": "def",
  "lexical_name": "liftOfRightInverse",
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
  "slug": "liftofrightinverse--fc755300cedc0e59f08b12b5",
  "source": {
    "blob": "b896d55d202d85cb94367bb9f81a0f1b13442b4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 353,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc755300cedc0e59f08b12b5747ccefb0f420025fa3b21bf6fd679d8cea8322f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:695dff419306205d552cc7d70d8b4a9ef8f4f961c0879471608a85572016486c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftOfRightInverse {f : F} {f_inv : M → A} (hf : Function.RightInverse f_inv f)
    ⦃d : Derivation R A A⦄ (hd : ∀ x, f x = 0 → f (d x) = 0) : Derivation R M M where
  toFun x := f (d (f_inv x))
  map_add' x y := by
    suffices f (d (f_inv (x + y) - (f_inv x + f_inv y))) = 0 by simpa [sub_eq_zero]
    apply hd
    simp [hf _]
  map_smul' x y := by
    suffices f (d (f_inv (x • y) - x • f_inv y)) = 0 by simpa [sub_eq_zero]
    apply hd
    simp [hf _]
  map_one_eq_zero' := by
    suffices f (d (f_inv 1 - 1)) = 0 by simpa [sub_eq_zero]
    apply hd
    simp [hf _]
  leibniz' x y := by
    suffices f (d (f_inv (x * y) - f_inv x * f_inv y)) = 0 by simpa [sub_eq_zero, hf _]
    apply hd
    simp [hf _]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant11c69302f0c6be44283437e8e2a5e83dd8a0ca30c12f4d6101dd5857af312654.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b896d55d202d85cb94367bb9f81a0f1b13442b4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
