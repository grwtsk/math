# _root_.MulActionHom.toQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d92450866de95718b453fcbfec31e2e34a00e169ca9f35501771f867371e6fff",
  "kind": "def",
  "lexical_name": "_root_.MulActionHom.toQuotient",
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
  "slug": "root-mulactionhom-toquotient--b6176b30e35eb801b0e63d35",
  "source": {
    "blob": "d4df39bc62b6f7bd0db4e947537c0f02a634d019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 120,
    "path": "GRWTSK/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6176b30e35eb801b0e63d35aa3581737a09b586c2d1c20b3b5e20610b3b92cd",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d92450866de95718b453fcbfec31e2e34a00e169ca9f35501771f867371e6fff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.MulActionHom.toQuotient (H : Subgroup G) : G →[G] G ⧸ H where
  toFun := (↑); map_smul' := Quotient.smul_coe H

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Quotient/Variant579e692f6e7b6f84fa7524d70df527e091f6ba22aec0812f807e59bd713c069e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4df39bc62b6f7bd0db4e947537c0f02a634d019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
