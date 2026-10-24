# sigmaFinsuppLEquivPiFinsupp_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10e0ba15-b1dd-2551-fa48-10d8f704a567",
  "kind": "theorem",
  "lexical_name": "sigmaFinsuppLEquivPiFinsupp_apply",
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
  "slug": "sigmafinsupplequivpifinsupp-apply--b961aae835a26717588dd561",
  "source": {
    "blob": "dd87be1c8a44fe6bdb4329ce1d270ebc34a087be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 94,
    "path": "GRWTSK/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b961aae835a26717588dd5611413f1ab96a42410af411b5e5e0ab78fe7cbe7e9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10e0ba15-b1dd-2551-fa48-10d8f704a567`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sigmaFinsuppLEquivPiFinsupp_apply {M : Type*} {ιs : η → Type*} [AddCommMonoid M]
    [Module R M] (f : (Σ j, ιs j) →₀ M) (j i) : sigmaFinsuppLEquivPiFinsupp R f j i = f ⟨j, i⟩ :=
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SumProd/Variant8f6ebc28788f56c2493e4e67f8f174afd6c7fac88f951768b9e07b5d106cf584.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd87be1c8a44fe6bdb4329ce1d270ebc34a087be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
