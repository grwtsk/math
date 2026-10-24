# liftFOne_zero_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:659c226a-58fa-cd64-8b02-ec6440d2fedc",
  "kind": "theorem",
  "lexical_name": "liftFOne_zero_comm",
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
  "slug": "liftfone-zero-comm--8dd3de7c3a87985008817ef0",
  "source": {
    "blob": "b9701eb8ff5f044393296844860bc916020457c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 84,
    "path": "GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd3de7c3a87985008817ef0e75a67d1c8b21f75bccca687108645bc6a31308f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:659c226a-58fa-cd64-8b02-ec6440d2fedc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftFOne_zero_comm {Y Z : C} (f : Y ⟶ Z) (P : ProjectiveResolution Y)
    (Q : ProjectiveResolution Z) :
    liftFOne f P Q ≫ Q.complex.d 1 0 = P.complex.d 1 0 ≫ liftFZero f P Q := by
  apply Q.exact₀.liftFromProjective_comp

/-- Auxiliary construction for `lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Resolution/Variant7f5796ad9b8c62659e1fa294da887116be61b7c63581cdd8398ba8a35da4c153.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9701eb8ff5f044393296844860bc916020457c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
