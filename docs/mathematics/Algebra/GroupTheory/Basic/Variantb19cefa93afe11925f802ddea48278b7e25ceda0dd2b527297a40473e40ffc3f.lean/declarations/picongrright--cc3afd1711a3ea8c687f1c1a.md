# piCongrRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6db374bfd67d53020f15064a218af8f84447422340126894bed9f916f86696e6",
  "kind": "def",
  "lexical_name": "piCongrRight",
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
  "slug": "picongrright--cc3afd1711a3ea8c687f1c1a",
  "source": {
    "blob": "9416be9821ddba597f9222b0b3a2201df1ad34de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 669,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc3afd1711a3ea8c687f1c1a92b657d98288827bfedf046b8eccf5d2dab6cd93",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6db374bfd67d53020f15064a218af8f84447422340126894bed9f916f86696e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 669–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piCongrRight {η : Type*} {Ms Ns : η → Type*} [∀ j, Mul (Ms j)] [∀ j, Mul (Ns j)]
  (es : ∀ j, Ms j ≃* Ns j) : (∀ j, Ms j) ≃* ∀ j, Ns j :=
  { Equiv.piCongrRight fun j => (es j).toEquiv with
    toFun := fun x j => es j (x j),
    invFun := fun x j => (es j).symm (x j),
    map_mul' := fun x y => funext fun j => (es j).map_mul (x j) (y j) }
#align mul_equiv.Pi_congr_right MulEquiv.piCongrRight
#align add_equiv.Pi_congr_right AddEquiv.piCongrRight
#align mul_equiv.Pi_congr_right_apply MulEquiv.piCongrRight_apply
#align add_equiv.Pi_congr_right_apply AddEquiv.piCongrRight_apply

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantb19cefa93afe11925f802ddea48278b7e25ceda0dd2b527297a40473e40ffc3f.lean#L669).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9416be9821ddba597f9222b0b3a2201df1ad34de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
