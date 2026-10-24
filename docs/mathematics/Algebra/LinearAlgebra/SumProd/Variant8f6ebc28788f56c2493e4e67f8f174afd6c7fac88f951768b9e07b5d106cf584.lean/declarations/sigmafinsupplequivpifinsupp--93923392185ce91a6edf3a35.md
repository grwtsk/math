# sigmaFinsuppLEquivPiFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aaf667560274911e32a116fc28b1e8c93027219ae354e752cc359b4b321cd75d",
  "kind": "def",
  "lexical_name": "sigmaFinsuppLEquivPiFinsupp",
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
  "slug": "sigmafinsupplequivpifinsupp--93923392185ce91a6edf3a35",
  "source": {
    "blob": "dd87be1c8a44fe6bdb4329ce1d270ebc34a087be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 86,
    "path": "GRWTSK/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93923392185ce91a6edf3a350b08bd568411bc6b0ecaba8376cf790ded8cd0d7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aaf667560274911e32a116fc28b1e8c93027219ae354e752cc359b4b321cd75d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sigmaFinsuppLEquivPiFinsupp {M : Type*} {ιs : η → Type*} [AddCommMonoid M]
    [Module R M] : ((Σ j, ιs j) →₀ M) ≃ₗ[R] (j : _) → (ιs j →₀ M) :=
  { sigmaFinsuppAddEquivPiFinsupp with
    map_smul' := fun c f => by
      ext
      simp }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd87be1c8a44fe6bdb4329ce1d270ebc34a087be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
