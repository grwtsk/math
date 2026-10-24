# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05f9fe1196d53e05c0b0093de17527bb81f8ce83bf0cabf943fa8c55c138a790",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--66c3ab315df8986d7cf6d218",
  "source": {
    "blob": "e5d115611656589763f915b79a231fdfb8ba41bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 8,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/SectorMissingAdditiveCutoff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66c3ab315df8986d7cf6d218008023a1f21c0cb5f9770d8ab819ecf466f48172",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/SectorMissingAdditiveCutoff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05f9fe1196d53e05c0b0093de17527bb81f8ce83bf0cabf943fa8c55c138a790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 8–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) =
    ∑ _p ∈ (Finset.Icc 1 (5 / 2)).product (Finset.Icc 1 (5 / 2)), (1 : ℤ) := by
  have h : commonDivisorWeightedMoment 5 2 (fun _ _ _ => (1 : ℤ)) = 1 := by
    decide
  exact h
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/SectorMissingAdditiveCutoff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/Checks/Negative/SectorMissingAdditiveCutoff.lean#L8).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5d115611656589763f915b79a231fdfb8ba41bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
