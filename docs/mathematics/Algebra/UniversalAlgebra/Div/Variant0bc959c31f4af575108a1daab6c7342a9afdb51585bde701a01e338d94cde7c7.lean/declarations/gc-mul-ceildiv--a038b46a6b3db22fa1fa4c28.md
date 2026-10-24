# gc_mul_ceilDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca8c0680-dc2f-25a7-905c-5912cba81700",
  "kind": "lemma",
  "lexical_name": "gc_mul_ceilDiv",
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
  "slug": "gc-mul-ceildiv--a038b46a6b3db22fa1fa4c28",
  "source": {
    "blob": "6791c525896d2e933233fc0a0c59342323f54143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 177,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a038b46a6b3db22fa1fa4c288fd344cc5753b1ac920e711be6d30cc2f69a2f2b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca8c0680-dc2f-25a7-905c-5912cba81700`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gc_mul_ceilDiv (ha : 0 < a) : GaloisConnection (· ⌈/⌉ a) (a * ·) := gc_smul_ceilDiv ha
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Div/Variant0bc959c31f4af575108a1daab6c7342a9afdb51585bde701a01e338d94cde7c7.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6791c525896d2e933233fc0a0c59342323f54143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
