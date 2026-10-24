# uniqueRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49785cf35d0729418fd68aef988f65f8209ea583d75b12d65bd737d7e01c6b50",
  "kind": "instance",
  "lexical_name": "uniqueRight",
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
  "slug": "uniqueright--8f5b7e7282976d9de9c7bc88",
  "source": {
    "blob": "cb558a95a48c75f084908c3ed66284d448a05476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantf913156d8624ae39d74037e03175af48122444d57bd4105354da23c1f12ffffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8f5b7e7282976d9de9c7bc88df0e8d497e87d6d0c4900969c3fe6dd2c578a960",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variantf913156d8624ae39d74037e03175af48122444d57bd4105354da23c1f12ffffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49785cf35d0729418fd68aef988f65f8209ea583d75b12d65bd737d7e01c6b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance uniqueRight [Subsingleton N] : Unique (M ⊗[R] N) where
  default := 0
  uniq z := z.inductionOn (fun x y ↦ by rw [Subsingleton.elim y 0, tmul_zero]) <| by
    rintro _ _ rfl rfl; apply add_zero

section

variable (R R' M N)

/-- A typeclass for `SMul` structures which can be moved across a tensor product.

This typeclass is generated automatically from an `IsScalarTower` instance, but exists so that
we can also add an instance for `AddCommGroup.toIntModule`, allowing `z •` to be moved even if
`R` does not support negation.

Note that `Module R' (M ⊗[R] N)` is available even without this typeclass on `R'`; it's only
needed if `TensorProduct.smul_tmul`, `TensorProduct.smul_tmul'`, or `TensorProduct.tmul_smul` is
used.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variantf913156d8624ae39d74037e03175af48122444d57bd4105354da23c1f12ffffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variantf913156d8624ae39d74037e03175af48122444d57bd4105354da23c1f12ffffc.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb558a95a48c75f084908c3ed66284d448a05476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
