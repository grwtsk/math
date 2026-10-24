# algebraMapInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68c0d856c322d86ea3218fbadb09b8c89505474111d2fae90cdb47ee4c662656",
  "kind": "def",
  "lexical_name": "algebraMapInv",
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
  "slug": "algebramapinv--3291feeebcc6aeb0ae877c3e",
  "source": {
    "blob": "828542458aeb41b8cf08b916b1de9d7e975f0f65",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 484,
    "path": "GRWTSK/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3291feeebcc6aeb0ae877c3eaa23290124fcb1566dc0df97ae48659440d5f561",
  "verification": {
    "reference": "docs/verification/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68c0d856c322d86ea3218fbadb09b8c89505474111d2fae90cdb47ee4c662656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def algebraMapInv : FreeAlgebra R X →ₐ[R] R :=
  lift R (0 : X → R)
#align free_algebra.algebra_map_inv FreeAlgebra.algebraMapInv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FreeAlgebra/Variant6b60292a925d1b425e573d6d40f7ad0469d628d7cca1b6be57039b5b96dd1f6b.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `828542458aeb41b8cf08b916b1de9d7e975f0f65` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
