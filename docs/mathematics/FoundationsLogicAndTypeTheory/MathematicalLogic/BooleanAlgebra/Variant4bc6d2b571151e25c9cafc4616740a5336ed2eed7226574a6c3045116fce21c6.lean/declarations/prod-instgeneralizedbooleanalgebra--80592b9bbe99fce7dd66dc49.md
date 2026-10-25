# Prod.instGeneralizedBooleanAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9976a5120b4b54811bc84fe4fec77d8ce4309ec6bbced765fb75744ce29ad53a",
  "kind": "instance",
  "lexical_name": "Prod.instGeneralizedBooleanAlgebra",
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
  "slug": "prod-instgeneralizedbooleanalgebra--80592b9bbe99fce7dd66dc49",
  "source": {
    "blob": "a3be4e5ce2ad069071f651558c8022868f192d6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 476,
    "line": 471,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80592b9bbe99fce7dd66dc490311bf61dcf92e26e4c4ee7238cbb13cb1a76894",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9976a5120b4b54811bc84fe4fec77d8ce4309ec6bbced765fb75744ce29ad53a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–476.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Prod.instGeneralizedBooleanAlgebra [GeneralizedBooleanAlgebra β] :
    GeneralizedBooleanAlgebra (α × β) where
  sup_inf_sdiff _ _ := Prod.ext (sup_inf_sdiff _ _) (sup_inf_sdiff _ _)
  inf_inf_sdiff _ _ := Prod.ext (inf_inf_sdiff _ _) (inf_inf_sdiff _ _)

-- Porting note: Once `pi_instance` has been ported, this is just `by pi_instance`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BooleanAlgebra/Variant4bc6d2b571151e25c9cafc4616740a5336ed2eed7226574a6c3045116fce21c6.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3be4e5ce2ad069071f651558c8022868f192d6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
