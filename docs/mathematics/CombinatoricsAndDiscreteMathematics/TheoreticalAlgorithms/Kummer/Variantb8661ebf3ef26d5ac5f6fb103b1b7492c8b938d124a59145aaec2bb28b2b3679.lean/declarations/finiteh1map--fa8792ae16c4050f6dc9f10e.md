# FiniteH1Map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:508e557cb2fc68f8465325d61e5e276584f78b39606172d7261fd706a41e187a",
  "kind": "structure",
  "lexical_name": "FiniteH1Map",
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
  "slug": "finiteh1map--fa8792ae16c4050f6dc9f10e",
  "source": {
    "blob": "6bf8c6021699c4c6a6bc19174d0c3c64dc07d658",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa8792ae16c4050f6dc9f10ebb293b73a8cda63bc40b4d5017c8670f970692bf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:508e557cb2fc68f8465325d61e5e276584f78b39606172d7261fd706a41e187a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteH1Map
    (G : FiniteGroupData.{u})
    (A : FiniteAddCommGroup.{u})
    (rho : AdditiveAction G A) where
  Domain : Type u
  toH1 : Domain → FiniteH1 G A rho

/--
Downstream finite Kummer/Selmer data over a constructed finite Selmer problem.

This is the first canonical home for abstract Kummer maps: it depends on
constructed finite `H1`, restriction, and Selmer data, but remains independent of
elliptic curves, BSD, Sha, and continuous/absolute Galois machinery.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Kummer/Variantb8661ebf3ef26d5ac5f6fb103b1b7492c8b938d124a59145aaec2bb28b2b3679.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf8c6021699c4c6a6bc19174d0c3c64dc07d658` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
