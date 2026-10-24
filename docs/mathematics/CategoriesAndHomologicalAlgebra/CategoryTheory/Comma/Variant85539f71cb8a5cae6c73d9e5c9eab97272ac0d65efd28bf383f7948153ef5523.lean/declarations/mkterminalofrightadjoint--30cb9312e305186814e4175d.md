# mkTerminalOfRightAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4002245725a323259e703723d64413ba8ab2b1df0ba3e1a800408455fcdd9d9a",
  "kind": "def",
  "lexical_name": "mkTerminalOfRightAdjoint",
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
  "slug": "mkterminalofrightadjoint--30cb9312e305186814e4175d",
  "source": {
    "blob": "faa6813af8f7ea226a347ac3466c9e84fae111e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant85539f71cb8a5cae6c73d9e5c9eab97272ac0d65efd28bf383f7948153ef5523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30cb9312e305186814e4175dce760a97fe26a71b729b57c5995429b514855d7c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant85539f71cb8a5cae6c73d9e5c9eab97272ac0d65efd28bf383f7948153ef5523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4002245725a323259e703723d64413ba8ab2b1df0ba3e1a800408455fcdd9d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTerminalOfRightAdjoint (h : F ⊣ G) (A : D) :
    IsTerminal (CostructuredArrow.mk (h.counit.app A) : CostructuredArrow F A) where
  lift B := CostructuredArrow.homMk (h.homEquiv _ _ B.pt.hom)
  uniq s m _ := by
    apply CostructuredArrow.ext
    simp [← CostructuredArrow.w m]

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant85539f71cb8a5cae6c73d9e5c9eab97272ac0d65efd28bf383f7948153ef5523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variant85539f71cb8a5cae6c73d9e5c9eab97272ac0d65efd28bf383f7948153ef5523.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faa6813af8f7ea226a347ac3466c9e84fae111e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
