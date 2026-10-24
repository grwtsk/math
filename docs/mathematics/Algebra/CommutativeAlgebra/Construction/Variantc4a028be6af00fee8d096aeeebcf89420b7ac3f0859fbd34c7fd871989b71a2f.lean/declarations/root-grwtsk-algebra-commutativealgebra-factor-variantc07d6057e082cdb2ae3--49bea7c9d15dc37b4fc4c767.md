# _root_.GRWTSK.Algebra.CommutativeAlgebra.Factor.Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.Polynomial.IsSplittingField.splittingField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f93afd50d37b3023c41ef98821dbdd3afcca1be446f9cbc240e4dc2e2689d77",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.Factor.Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.Polynomial.IsSplittingField.splittingField",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-factor-variantc07d6057e082cdb2ae3--49bea7c9d15dc37b4fc4c767",
  "source": {
    "blob": "472d9e1b12f1704d028c8a725cac477be5728c80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 284,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49bea7c9d15dc37b4fc4c767abc8100bdbf30324ebacd7f442fc57a89571aec1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f93afd50d37b3023c41ef98821dbdd3afcca1be446f9cbc240e4dc2e2689d77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.CommutativeAlgebra.Factor.Variantc07d6057e082cdb2ae35c4a3e262ce04faca9ac9d1c3f13a3b78e785472b11aa.Polynomial.IsSplittingField.splittingField (f : K[X]) :
    IsSplittingField K (SplittingField f) f :=
  IsSplittingField.of_algEquiv _ f (algEquivSplittingFieldAux f).symm

@[stacks 09HU "Splitting part"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472d9e1b12f1704d028c8a725cac477be5728c80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
