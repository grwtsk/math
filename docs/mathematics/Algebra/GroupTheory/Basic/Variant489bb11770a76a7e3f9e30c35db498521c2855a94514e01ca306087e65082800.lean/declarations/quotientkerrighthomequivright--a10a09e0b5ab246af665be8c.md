# quotientKerRightHomEquivRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15fc33e6b07a231a1d9f659533ce9da627709fd50c220d42e88ea717e05dcfb9",
  "kind": "def",
  "lexical_name": "quotientKerRightHomEquivRight",
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
  "slug": "quotientkerrighthomequivright--a10a09e0b5ab246af665be8c",
  "source": {
    "blob": "df1a5fed32cf625d7228ccf6c28f2830aa8964eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 31,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a10a09e0b5ab246af665be8c89a8c94d4b1a8c6f0d64c69fd8c3ac499c1d8b33",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15fc33e6b07a231a1d9f659533ce9da627709fd50c220d42e88ea717e05dcfb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotientKerRightHomEquivRight : E ⧸ S.rightHom.ker ≃* G :=
  QuotientGroup.quotientKerEquivOfSurjective S.rightHom S.rightHom_surjective

/-- The isomorphism `E ⧸ S.inl.range ≃* G` induced by `S.rightHom` -/
@[to_additive /-- The isomorphism `E ⧸ S.inl.range ≃+ G` induced by `S.rightHom` -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df1a5fed32cf625d7228ccf6c28f2830aa8964eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
