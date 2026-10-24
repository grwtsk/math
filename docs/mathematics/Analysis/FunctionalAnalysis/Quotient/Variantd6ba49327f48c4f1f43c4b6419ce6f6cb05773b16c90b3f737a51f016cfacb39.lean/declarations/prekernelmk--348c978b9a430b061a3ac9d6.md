# preKernelMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:22d3e0f35c26fdc3332ceaafc399d8d1bab68d942a1445fe2f3b7bb0abd7d1f6",
  "kind": "def",
  "lexical_name": "preKernelMk",
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
  "slug": "prekernelmk--348c978b9a430b061a3ac9d6",
  "source": {
    "blob": "cf8f79a7f06d598dec29f45f841e2d80d54ed248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 36,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:348c978b9a430b061a3ac9d6929d32d3b62a423f86d2312b93132997ee034f9b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:22d3e0f35c26fdc3332ceaafc399d8d1bab68d942a1445fe2f3b7bb0abd7d1f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def preKernelMk (f : Raw kernel) : PreKernelSpace kernel :=
  Submodule.Quotient.mk f

/-- The raw kernel form is invariant under changing either representative by
a member of the radical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Quotient/Variantd6ba49327f48c4f1f43c4b6419ce6f6cb05773b16c90b3f737a51f016cfacb39.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8f79a7f06d598dec29f45f841e2d80d54ed248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
