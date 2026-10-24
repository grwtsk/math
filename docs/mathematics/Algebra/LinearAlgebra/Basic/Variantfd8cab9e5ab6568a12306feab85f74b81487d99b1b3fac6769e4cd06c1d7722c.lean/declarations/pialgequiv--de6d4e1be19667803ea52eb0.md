# piAlgEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c445096d89ba2d4e696aea91d9b98c3dc34a0d20c787dbee316ac01449ca82e8",
  "kind": "def",
  "lexical_name": "piAlgEquiv",
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
  "slug": "pialgequiv--de6d4e1be19667803ea52eb0",
  "source": {
    "blob": "059cf13371418aa322f014e88dca4ec9a6e7cf28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 855,
    "line": 841,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de6d4e1be19667803ea52eb0233682fbc390559971450d5844b6e326e8ed6859",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c445096d89ba2d4e696aea91d9b98c3dc34a0d20c787dbee316ac01449ca82e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 841–855.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps!] def piAlgEquiv (R) [CommSemiring R] [∀ i, Semiring (β i)] [∀ i, Algebra R (β i)]
    [Fintype n] [DecidableEq n] : Matrix n n (Π i, β i) ≃ₐ[R] Π i, Matrix n n (β i) where
  __ := piRingEquiv
  commutes' := (AlgHom.mk' (piRingEquiv (β := β) (n := n)).toRingHom fun _ _ ↦ rfl).commutes

end Pi

section Transpose

open Matrix

variable (m n α)

/-- `Matrix.transpose` as an `AddEquiv` -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean#L841).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `059cf13371418aa322f014e88dca4ec9a6e7cf28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
