# Quotient.algebraMap_quotient_of_ramificationIdx_neZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:446df41e-f030-9769-bf8a-52215a305424",
  "kind": "theorem",
  "lexical_name": "Quotient.algebraMap_quotient_of_ramificationIdx_neZero",
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
  "slug": "quotient-algebramap-quotient-of-ramificationidx-nezero--130b3f123dc170526212521a",
  "source": {
    "blob": "0e5bf861f88ae866623850c06893862d51339719",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 493,
    "line": 488,
    "path": "GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:130b3f123dc170526212521a62191ee62e1aa730b31029dc6a6efe7d478a5005",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:446df41e-f030-9769-bf8a-52215a305424`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–493.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Quotient.algebraMap_quotient_of_ramificationIdx_neZero (x : R) :
    algebraMap (R ⧸ p) (S ⧸ P) (Ideal.Quotient.mk p x) = Ideal.Quotient.mk _ (f x) := rfl
#align ideal.quotient.algebra_map_quotient_of_ramification_idx_ne_zero Ideal.Quotient.algebraMap_quotient_of_ramificationIdx_neZero

/-- The inclusion `(P^(i + 1) / P^e) ⊂ (P^i / P^e)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RamificationInertia/Variante962de568474b0ba2ee8e5dabc3de7dd96bd9352d47a216f78556a9734f5ba68.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e5bf861f88ae866623850c06893862d51339719` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
