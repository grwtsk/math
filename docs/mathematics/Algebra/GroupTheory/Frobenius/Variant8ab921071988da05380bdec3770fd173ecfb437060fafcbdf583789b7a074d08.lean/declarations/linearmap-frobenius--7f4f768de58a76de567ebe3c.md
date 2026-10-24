# LinearMap.frobenius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c978d043d2e8b7f24cd53362ee0ef4e76b01bb9e1aff166ef07ec0b35abf6068",
  "kind": "def",
  "lexical_name": "LinearMap.frobenius",
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
  "slug": "linearmap-frobenius--7f4f768de58a76de567ebe3c",
  "source": {
    "blob": "057fe8c2c80932a1b986ab69185617b155e601c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 116,
    "path": "GRWTSK/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f4f768de58a76de567ebe3ce6977c3989b54e6611b2ac7cf592af7a2e683f04",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c978d043d2e8b7f24cd53362ee0ef4e76b01bb9e1aff166ef07ec0b35abf6068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec def LinearMap.frobenius [Algebra R S] : S →ₛₗ[frobenius R p] S where
  __ := frobenius S p
  map_smul' r s := show frobenius S p _ = _ by
    simp_rw [Algebra.smul_def, map_mul, ← (algebraMap R S).map_frobenius]; rfl

/-- The iterated frobenius map of an algebra as a iterated-frobenius-semilinear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Frobenius/Variant8ab921071988da05380bdec3770fd173ecfb437060fafcbdf583789b7a074d08.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `057fe8c2c80932a1b986ab69185617b155e601c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
