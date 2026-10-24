# smulCommClass_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85ba2012c6717be9da45122f5b15e221b86668a52a43508362f7bce80ba188c8",
  "kind": "instance",
  "lexical_name": "smulCommClass_right",
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
  "slug": "smulcommclass-right--6cd03647a81f7d93643497ec",
  "source": {
    "blob": "bc3ef0b6b8f68af12f3bb235d41401db60f4fcf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 90,
    "path": "GRWTSK/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6cd03647a81f7d93643497ecb8dbbde188af06e4ee747a5b3036f97bfbe3a5c5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85ba2012c6717be9da45122f5b15e221b86668a52a43508362f7bce80ba188c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance smulCommClass_right [Monoid N] [SMul M α] [SMul N α] [SMulCommClass M N α] :
    SMulCommClass M Nˣ α where smul_comm m n := (smul_comm m (n : N) : _)
#align units.smul_comm_class_right Units.smulCommClass_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Units/Variantacc2f6a1b56f500905a3c9d981f33d69e8fd8088462f1e6d32f6ff32a287a615.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc3ef0b6b8f68af12f3bb235d41401db60f4fcf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
