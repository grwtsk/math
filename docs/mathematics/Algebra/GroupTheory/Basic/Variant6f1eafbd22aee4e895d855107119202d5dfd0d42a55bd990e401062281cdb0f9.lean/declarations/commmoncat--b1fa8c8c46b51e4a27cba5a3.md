# CommMonCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d09d243bd3ea6fcb8636a7dcb40bcbca1719679a36424b28b09bf2d8909a065f",
  "kind": "structure",
  "lexical_name": "CommMonCat",
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
  "slug": "commmoncat--b1fa8c8c46b51e4a27cba5a3",
  "source": {
    "blob": "f44a57bb65e8815552ca5a07f155a430eaa536f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 224,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1fa8c8c46b51e4a27cba5a3917b238368aec6d7f14148540a191d4c466cb1a5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d09d243bd3ea6fcb8636a7dcb40bcbca1719679a36424b28b09bf2d8909a065f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommMonCat : Type (u + 1) where
  /-- The underlying type. -/
  (carrier : Type u)
  [str : CommMonoid carrier]

attribute [instance] AddCommMonCat.str CommMonCat.str
attribute [to_additive existing] CommMonCat.carrier CommMonCat.str

initialize_simps_projections AddCommMonCat (carrier → coe, -str)
initialize_simps_projections CommMonCat (carrier → coe, -str)

namespace CommMonCat

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant6f1eafbd22aee4e895d855107119202d5dfd0d42a55bd990e401062281cdb0f9.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f44a57bb65e8815552ca5a07f155a430eaa536f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
