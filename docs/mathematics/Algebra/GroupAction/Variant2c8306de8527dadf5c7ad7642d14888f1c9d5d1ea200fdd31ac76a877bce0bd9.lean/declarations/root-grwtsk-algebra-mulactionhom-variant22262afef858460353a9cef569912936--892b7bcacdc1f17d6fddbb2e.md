# _root_.GRWTSK.Algebra.MulActionHom.Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.DistribMulActionHomClass.toDistribMulActionHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fb70de96e397c5ab45d16068f3c2c225be4c9a10cb5010eb61a545780212c62",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.MulActionHom.Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.DistribMulActionHomClass.toDistribMulActionHom",
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
  "slug": "root-grwtsk-algebra-mulactionhom-variant22262afef858460353a9cef569912936--892b7bcacdc1f17d6fddbb2e",
  "source": {
    "blob": "753e16c7185bf7e11cf3fb4f439e289cee3e6653",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 277,
    "line": 272,
    "path": "GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:892b7bcacdc1f17d6fddbb2e6d71c933c73d7b50054a52af02a55e07cf255e99",
  "verification": {
    "reference": "docs/verification/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fb70de96e397c5ab45d16068f3c2c225be4c9a10cb5010eb61a545780212c62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.MulActionHom.Variant22262afef858460353a9cef5699129361b31cb8ad11588c899f117bf169815e6.DistribMulActionHomClass.toDistribMulActionHom [DistribMulActionHomClass F M A B]
  (f : F) : A →+[M] B :=
  { (f : A →+ B), (f : A →[M] B) with }

/-- Any type satisfying `SMulHomClass` can be cast into `MulActionHom` via
  `SMulHomClass.toMulActionHom`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupAction/Variant2c8306de8527dadf5c7ad7642d14888f1c9d5d1ea200fdd31ac76a877bce0bd9.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `753e16c7185bf7e11cf3fb4f439e289cee3e6653` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
