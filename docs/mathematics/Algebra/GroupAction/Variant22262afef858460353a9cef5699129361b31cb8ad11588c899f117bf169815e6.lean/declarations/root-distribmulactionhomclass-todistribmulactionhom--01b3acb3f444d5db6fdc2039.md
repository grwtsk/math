# _root_.DistribMulActionHomClass.toDistribMulActionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:051acc9170772d7c008a5d1b174f24c48d69136cd1376d8f0c97b4e6b97caff7",
  "kind": "def",
  "lexical_name": "_root_.DistribMulActionHomClass.toDistribMulActionHom",
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
  "slug": "root-distribmulactionhomclass-todistribmulactionhom--01b3acb3f444d5db6fdc2039",
  "source": {
    "blob": "286d2a40aea9492c39e17d2e3296b3b87b46f587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 264,
    "path": "GRWTSK/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01b3acb3f444d5db6fdc203910ca4c1b22edb16b8a89e7215d84eaa720339ee4",
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

Occurrence: `declaration:051acc9170772d7c008a5d1b174f24c48d69136cd1376d8f0c97b4e6b97caff7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.DistribMulActionHomClass.toDistribMulActionHom [DistribMulActionHomClass F M A B]
  (f : F) : A →+[M] B :=
  { (f : A →+ B), (f : A →[M] B) with }

/-- Any type satisfying `SMulHomClass` can be cast into `MulActionHom` via
  `SMulHomClass.toMulActionHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupAction/Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `286d2a40aea9492c39e17d2e3296b3b87b46f587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
