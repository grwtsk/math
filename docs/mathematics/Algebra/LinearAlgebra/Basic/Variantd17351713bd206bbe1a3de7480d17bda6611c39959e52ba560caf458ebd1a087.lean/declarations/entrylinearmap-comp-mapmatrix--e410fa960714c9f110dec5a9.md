# entryLinearMap_comp_mapMatrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76376809-05cd-4a94-f9ca-f002b3bcc067",
  "kind": "lemma",
  "lexical_name": "entryLinearMap_comp_mapMatrix",
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
  "slug": "entrylinearmap-comp-mapmatrix--e410fa960714c9f110dec5a9",
  "source": {
    "blob": "a43051f6785f0278bc3d8844e828d36dc0711c51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 459,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd17351713bd206bbe1a3de7480d17bda6611c39959e52ba560caf458ebd1a087.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e410fa960714c9f110dec5a9ab248520d5dd432317aae5222ef5ba1483cc9c75",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantd17351713bd206bbe1a3de7480d17bda6611c39959e52ba560caf458ebd1a087.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76376809-05cd-4a94-f9ca-f002b3bcc067`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma entryLinearMap_comp_mapMatrix (f : α →ₗ[R] β) (i : m) (j : n) :
    entryLinearMap R _ i j ∘ₗ f.mapMatrix = f ∘ₗ entryLinearMap R _ i j := rfl

end LinearMap

namespace LinearEquiv

variable [Semiring R] [AddCommMonoid α] [AddCommMonoid β] [AddCommMonoid γ]
variable [Module R α] [Module R β] [Module R γ]

/-- The `LinearEquiv` between spaces of matrices induced by a `LinearEquiv` between their
coefficients. This is `Matrix.map` as a `LinearEquiv`. -/
@[simps apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantd17351713bd206bbe1a3de7480d17bda6611c39959e52ba560caf458ebd1a087.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantd17351713bd206bbe1a3de7480d17bda6611c39959e52ba560caf458ebd1a087.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a43051f6785f0278bc3d8844e828d36dc0711c51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
