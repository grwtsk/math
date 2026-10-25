# prod_coe_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23a7c35e-0cd3-25b9-675d-02885c7c6d33",
  "kind": "theorem",
  "lexical_name": "prod_coe_symm",
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
  "slug": "prod-coe-symm--ec952bbcd2b1e886051dfb2c",
  "source": {
    "blob": "bc0904342d2df6dbe9d8610397906439edbc0688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 791,
    "line": 787,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variantb4342d2d5cbe46e54c05df92b24b9b5502b67bc5dd2e683c0de95b1879907198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec952bbcd2b1e886051dfb2cfe5b1e583c54fe35d612cd05628c00ee8fd7c1ab",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variantb4342d2d5cbe46e54c05df92b24b9b5502b67bc5dd2e683c0de95b1879907198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23a7c35e-0cd3-25b9-675d-02885c7c6d33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 787–791.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_coe_symm (e : PartialEquiv α β) (e' : PartialEquiv γ δ) :
    ((e.prod e').symm : β × δ → α × γ) = fun p => (e.symm p.1, e'.symm p.2) :=
  rfl

@[simp, mfld_simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variantb4342d2d5cbe46e54c05df92b24b9b5502b67bc5dd2e683c0de95b1879907198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PartialEquiv/Variantb4342d2d5cbe46e54c05df92b24b9b5502b67bc5dd2e683c0de95b1879907198.lean#L787).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0904342d2df6dbe9d8610397906439edbc0688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
