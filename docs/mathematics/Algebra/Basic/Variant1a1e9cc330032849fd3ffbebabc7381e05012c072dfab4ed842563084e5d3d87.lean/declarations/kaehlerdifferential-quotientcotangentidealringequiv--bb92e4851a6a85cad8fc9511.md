# KaehlerDifferential.quotientCotangentIdealRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:293a4fe99b3fa5af07041b957aca60b3ef57d0dd192c9fa5de6f146ac2208e27",
  "kind": "def",
  "lexical_name": "KaehlerDifferential.quotientCotangentIdealRingEquiv",
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
  "slug": "kaehlerdifferential-quotientcotangentidealringequiv--bb92e4851a6a85cad8fc9511",
  "source": {
    "blob": "8cef68402fb7b80b00ca0436233549a4e9ceee37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 332,
    "path": "GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb92e4851a6a85cad8fc9511ca1be2cac6e6eef25069032858c6f97361926f01",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:293a4fe99b3fa5af07041b957aca60b3ef57d0dd192c9fa5de6f146ac2208e27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KaehlerDifferential.quotientCotangentIdealRingEquiv :
    (S ⊗ S ⧸ KaehlerDifferential.ideal R S ^ 2) ⧸ (KaehlerDifferential.ideal R S).cotangentIdeal ≃+*
      S := by
  have : Function.RightInverse (TensorProduct.includeLeft (R := R) (S := R) (A := S) (B := S))
      (↑(TensorProduct.lmul' R : S ⊗[R] S →ₐ[R] S) : S ⊗[R] S →+* S) := by
    intro x; rw [AlgHom.coe_toRingHom, ← AlgHom.comp_apply, TensorProduct.lmul'_comp_includeLeft]
    rfl
  refine (Ideal.quotCotangent _).trans ?_
  refine (Ideal.quotEquivOfEq ?_).trans (RingHom.quotientKerEquivOfRightInverse this)
  ext; rfl

/-- The quotient ring of `S ⊗ S ⧸ J ^ 2` by `Ω[S⁄R]` is isomorphic to `S` as an `S`-algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant1a1e9cc330032849fd3ffbebabc7381e05012c072dfab4ed842563084e5d3d87.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cef68402fb7b80b00ca0436233549a4e9ceee37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
