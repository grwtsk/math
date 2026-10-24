# Additive.subtractionCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:361b359fd84861ea39d417eb5dbff72b700a11dd2269d7361911db91e17badf9",
  "kind": "instance",
  "lexical_name": "Additive.subtractionCommMonoid",
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
  "slug": "additive-subtractioncommmonoid--0fcb489f7934111c8bcca690",
  "source": {
    "blob": "33245bfadf19c9d2b63c782ad9110504c97f49fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 416,
    "line": 413,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0fcb489f7934111c8bcca69002705e6d06541325b16d252546d2a4217f6c3d34",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:361b359fd84861ea39d417eb5dbff72b700a11dd2269d7361911db91e17badf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–416.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Additive.subtractionCommMonoid [DivisionCommMonoid α] :
    SubtractionCommMonoid (Additive α) :=
  { Additive.subtractionMonoid, Additive.addCommSemigroup with }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33245bfadf19c9d2b63c782ad9110504c97f49fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
