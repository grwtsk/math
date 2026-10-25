# quotientKerEquivOfRightInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f963013f19f71ccfe3716e87b297b7aebdbc20518a753a6271aef8fa136959d7",
  "kind": "def",
  "lexical_name": "quotientKerEquivOfRightInverse",
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
  "slug": "quotientkerequivofrightinverse--c2cad69b082414c40c27389a",
  "source": {
    "blob": "22d2aa2b7b71255946282917084b631b34cfe0fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 339,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant763d3c2b5b406f7e45fe1ab98ddc8829f8bfe8b470978aa50f8094096bae10b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2cad69b082414c40c27389ac31e0a539655c6f538f9f90cad18cb14d6e2437f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant763d3c2b5b406f7e45fe1ab98ddc8829f8bfe8b470978aa50f8094096bae10b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f963013f19f71ccfe3716e87b297b7aebdbc20518a753a6271aef8fa136959d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientKerEquivOfRightInverse (g : β → α) (hf : Function.RightInverse g f) :
    Quotient (ker f) ≃ β where
  toFun a := (Quotient.liftOn' a f) fun _ _ => id
  invFun b := Quotient.mk'' (g b)
  left_inv a := Quotient.inductionOn' a fun a => Quotient.sound' <| hf (f a)
  right_inv := hf
#align setoid.quotient_ker_equiv_of_right_inverse Setoid.quotientKerEquivOfRightInverse
#align setoid.quotient_ker_equiv_of_right_inverse_symm_apply Setoid.quotientKerEquivOfRightInverse_symm_apply
#align setoid.quotient_ker_equiv_of_right_inverse_apply Setoid.quotientKerEquivOfRightInverse_apply

/-- The quotient of α by the kernel of a surjective function f bijects with f's codomain.

If a specific right-inverse of `f` is known, `Setoid.quotientKerEquivOfRightInverse` can be
definitionally more useful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant763d3c2b5b406f7e45fe1ab98ddc8829f8bfe8b470978aa50f8094096bae10b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant763d3c2b5b406f7e45fe1ab98ddc8829f8bfe8b470978aa50f8094096bae10b0.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22d2aa2b7b71255946282917084b631b34cfe0fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
