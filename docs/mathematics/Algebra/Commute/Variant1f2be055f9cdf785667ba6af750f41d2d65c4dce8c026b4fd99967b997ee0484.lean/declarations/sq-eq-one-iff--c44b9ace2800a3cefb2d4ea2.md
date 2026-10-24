# sq_eq_one_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c42215ac-eb49-9c53-be7d-d8738c0722a0",
  "kind": "lemma",
  "lexical_name": "sq_eq_one_iff",
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
  "slug": "sq-eq-one-iff--c44b9ace2800a3cefb2d4ea2",
  "source": {
    "blob": "901652875693ce25e21da9c23cadf25cdea98c6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 158,
    "path": "GRWTSK/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c44b9ace2800a3cefb2d4ea2c3b339f58175e92d2fd857dcb73db99d2d315d3e",
  "verification": {
    "reference": "docs/verification/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c42215ac-eb49-9c53-be7d-d8738c0722a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma sq_eq_one_iff : a ^ 2 = 1 ↔ a = 1 ∨ a = -1 := by
  rw [← (Commute.one_right a).sq_eq_sq_iff_eq_or_eq_neg, one_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Commute/Variant1f2be055f9cdf785667ba6af750f41d2d65c4dce8c026b4fd99967b997ee0484.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `901652875693ce25e21da9c23cadf25cdea98c6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
