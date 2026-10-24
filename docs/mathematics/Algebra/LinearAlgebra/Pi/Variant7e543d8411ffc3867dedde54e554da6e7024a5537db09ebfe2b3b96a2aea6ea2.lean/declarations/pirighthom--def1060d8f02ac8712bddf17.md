# piRightHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3747cb989843e11184ffafb36b15ece2ba244225a4fb72c55e2c47540406a5d4",
  "kind": "def",
  "lexical_name": "piRightHom",
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
  "slug": "pirighthom--def1060d8f02ac8712bddf17",
  "source": {
    "blob": "1322c04464c7aa6510b22306589427a089480072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:def1060d8f02ac8712bddf1704105e85fffab7d6f37c8a7b0d19f9ecebb77b42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3747cb989843e11184ffafb36b15ece2ba244225a4fb72c55e2c47540406a5d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def piRightHom : A ⊗[R] (∀ i, B i) →ₐ[S] ∀ i, A ⊗[R] B i :=
  AlgHom.ofLinearMap (_root_.TensorProduct.piRightHom R S A B) (by simp) (by simp)

variable [Fintype ι] [DecidableEq ι]

/-- Tensor product of rings commutes with finite products on the right. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant7e543d8411ffc3867dedde54e554da6e7024a5537db09ebfe2b3b96a2aea6ea2.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1322c04464c7aa6510b22306589427a089480072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
