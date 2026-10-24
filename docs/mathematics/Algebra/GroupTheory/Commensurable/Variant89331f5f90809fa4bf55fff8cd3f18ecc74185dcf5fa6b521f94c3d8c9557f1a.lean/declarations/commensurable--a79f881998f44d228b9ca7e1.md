# Commensurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fd713114233d1e6c1bd407c47feb1fdc5c1ac3fdd362b1189a156311906c145",
  "kind": "def",
  "lexical_name": "Commensurable",
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
  "slug": "commensurable--a79f881998f44d228b9ca7e1",
  "source": {
    "blob": "029082b78d5450d57c79dd391037913afccc0356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a79f881998f44d228b9ca7e1e969cb32f6a69616be9d484fec59227942df437e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fd713114233d1e6c1bd407c47feb1fdc5c1ac3fdd362b1189a156311906c145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Commensurable (H K : Subgroup G) : Prop :=
  H.relindex K ≠ 0 ∧ K.relindex H ≠ 0

namespace Commensurable

open Pointwise

@[refl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Commensurable/Variant89331f5f90809fa4bf55fff8cd3f18ecc74185dcf5fa6b521f94c3d8c9557f1a.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `029082b78d5450d57c79dd391037913afccc0356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
