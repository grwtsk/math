# coeff_largeSchroderSeries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4eda648-0c2f-70ad-d6f3-5bc109e5ae6f",
  "kind": "lemma",
  "lexical_name": "coeff_largeSchroderSeries",
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
  "slug": "coeff-largeschroderseries--73edcf89264d4b9772aaa939",
  "source": {
    "blob": "9b9bdee3f049bdabaffca113ead0d155febaf060",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 49,
    "path": "GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73edcf89264d4b9772aaa93947119d2f06f40de746521d6c39987dbd2c03039e",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4eda648-0c2f-70ad-d6f3-5bc109e5ae6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coeff_largeSchroderSeries (n : ℕ) :
    (coeff n) largeSchroderSeries = largeSchroder n := by
  simp [largeSchroderSeries]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Schroder/Variant9360e80cb54e71714420ed0f71755b3a6a5d482217b91ba76c5440c36b03ae1c.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b9bdee3f049bdabaffca113ead0d155febaf060` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
