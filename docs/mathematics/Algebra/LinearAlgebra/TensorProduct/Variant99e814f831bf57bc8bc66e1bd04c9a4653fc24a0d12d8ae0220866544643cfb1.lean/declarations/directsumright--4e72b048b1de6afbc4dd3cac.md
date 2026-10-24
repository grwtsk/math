# directSumRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c4c9a9a97e2bd33c028e36ef480fde8564849404dffa5971dfc4383d370b4a13",
  "kind": "def",
  "lexical_name": "directSumRight",
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
  "slug": "directsumright--4e72b048b1de6afbc4dd3cac",
  "source": {
    "blob": "de36658a717ebaae9eb935367e13fe69b0cdc743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e72b048b1de6afbc4dd3cac5e125b896632b3920ea85839577c5e0ea123e065",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c4c9a9a97e2bd33c028e36ef480fde8564849404dffa5971dfc4383d370b4a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def directSumRight : (M₁' ⊗[R] ⨁ i, M₂ i) ≃ₗ[R] ⨁ i, M₁' ⊗[R] M₂ i :=
  TensorProduct.comm R _ _ ≪≫ₗ directSumLeft R M₂ M₁' ≪≫ₗ
    DFinsupp.mapRange.linearEquiv fun _ => TensorProduct.comm R _ _

variable {M₁ M₁' M₂ M₂'}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant99e814f831bf57bc8bc66e1bd04c9a4653fc24a0d12d8ae0220866544643cfb1.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de36658a717ebaae9eb935367e13fe69b0cdc743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
