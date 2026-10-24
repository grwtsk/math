# _root_.MulSemiringActionHomClass.toMulSemiringActionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4259056bf68009b305fe9ee2dc562363db22babcea253d9712d3aa56b47a3d6d",
  "kind": "def",
  "lexical_name": "_root_.MulSemiringActionHomClass.toMulSemiringActionHom",
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
  "slug": "root-mulsemiringactionhomclass-tomulsemiringactionhom--7b8bf37e4d6944d5076d3e65",
  "source": {
    "blob": "286d2a40aea9492c39e17d2e3296b3b87b46f587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 500,
    "path": "GRWTSK/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b8bf37e4d6944d5076d3e65422116f94da00589c46798754961249902b90261",
  "verification": {
    "reference": "docs/verification/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4259056bf68009b305fe9ee2dc562363db22babcea253d9712d3aa56b47a3d6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.MulSemiringActionHomClass.toMulSemiringActionHom [MulSemiringActionHomClass F M R S]
  (f : F) : R →+*[M] S :=
 { (f : R →+* S), (f : R →+[M] S) with }

/-- Any type satisfying `MulSemiringActionHomClass` can be cast into `MulSemiringActionHom` via
  `MulSemiringActionHomClass.toMulSemiringActionHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286d2a40aea9492c39e17d2e3296b3b87b46f587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
