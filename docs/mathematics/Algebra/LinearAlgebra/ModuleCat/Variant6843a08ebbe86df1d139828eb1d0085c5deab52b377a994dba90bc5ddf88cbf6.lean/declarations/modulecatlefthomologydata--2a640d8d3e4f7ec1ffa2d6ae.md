# moduleCatLeftHomologyData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a20d460858f59345f2abc64fe0a0477f4d68da2c50a913c346067d2e105251eb",
  "kind": "def",
  "lexical_name": "moduleCatLeftHomologyData",
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
  "slug": "modulecatlefthomologydata--2a640d8d3e4f7ec1ffa2d6ae",
  "source": {
    "blob": "4db2087884967af9bcc74cfe79ef9b731fce6fc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 102,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a640d8d3e4f7ec1ffa2d6ae3e0f3637073367a33da2fad3bd0681201cd19c81",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a20d460858f59345f2abc64fe0a0477f4d68da2c50a913c346067d2e105251eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def moduleCatLeftHomologyData : S.LeftHomologyData where
  K := ModuleCat.of R (LinearMap.ker S.g.hom)
  H := ModuleCat.of R (LinearMap.ker S.g.hom ⧸ LinearMap.range S.moduleCatToCycles)
  i := ModuleCat.ofHom (LinearMap.ker S.g.hom).subtype
  π := ModuleCat.ofHom (LinearMap.range S.moduleCatToCycles).mkQ
  wi := by aesop
  hi := ModuleCat.kernelIsLimit _
  wπ := by aesop
  hπ := ModuleCat.cokernelIsColimit (ModuleCat.ofHom S.moduleCatToCycles)

/-- The homology of a short complex of modules as a concrete quotient. -/
@[deprecated "This abbreviation is now inlined" (since := "2025-05-14")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4db2087884967af9bcc74cfe79ef9b731fce6fc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
