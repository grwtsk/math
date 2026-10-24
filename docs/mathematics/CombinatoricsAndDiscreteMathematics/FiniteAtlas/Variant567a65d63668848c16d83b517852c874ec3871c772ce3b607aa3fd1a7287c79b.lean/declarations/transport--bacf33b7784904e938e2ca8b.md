# Transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c586be7cfde2815e4f9476d17176a9fc7633947e7cce64fb0f1d6add140c67ca",
  "kind": "structure",
  "lexical_name": "Transport",
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
  "slug": "transport--bacf33b7784904e938e2ca8b",
  "source": {
    "blob": "e5f34c2a6517eb6a15bfb7d111016449e2303c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bacf33b7784904e938e2ca8bc212a5936e5e4671879fb2fe3283b769474c78ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c586be7cfde2815e4f9476d17176a9fc7633947e7cce64fb0f1d6add140c67ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Transport (A B : Object) where
  /-- Underlying state map. -/
  map : A.state → B.state
  /-- Source observable used to recover each target observable. -/
  indexMap : B.index → A.index
  /-- Typed conversion of the selected observable value. -/
  valueMap : (i : B.index) → A.certificates.value (indexMap i) → B.certificates.value i
  /-- Required observable equation for this particular map. -/
  observe_map : ∀ i s, B.certificates.observe i (map s) =
    valueMap i (A.certificates.observe (indexMap i) s)

namespace Transport

/-- Identity atlas transport is constructed without extra hypotheses. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteAtlas/Variant567a65d63668848c16d83b517852c874ec3871c772ce3b607aa3fd1a7287c79b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5f34c2a6517eb6a15bfb7d111016449e2303c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
