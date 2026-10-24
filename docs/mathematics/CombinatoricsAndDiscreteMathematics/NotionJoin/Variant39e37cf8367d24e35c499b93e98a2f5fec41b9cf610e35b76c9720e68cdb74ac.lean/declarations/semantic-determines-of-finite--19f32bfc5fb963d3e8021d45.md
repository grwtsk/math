# semantic_determines_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bedd0e2-15c6-26be-c43b-dadaa61802e9",
  "kind": "theorem",
  "lexical_name": "semantic_determines_of_finite",
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
  "slug": "semantic-determines-of-finite--19f32bfc5fb963d3e8021d45",
  "source": {
    "blob": "ec9637454cab67a51953364bd800ea3fb9a7375f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 85,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19f32bfc5fb963d3e8021d45c1df816e0c2c4c7d1b6f4b8e8d7a27ca9884a191",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bedd0e2-15c6-26be-c43b-dadaa61802e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem semantic_determines_of_finite {notion : FiniteNotion Object Test Value}
    {budget : ℕ} {target : Object → Result} (determined : notion.DeterminesAt budget target) :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DeterminesAt
      notion.policy budget target :=
  fun {_ _} hxy ↦ determined (notion.equivalent_of_semantic hxy)

/-- Test inclusion suffices for refinement only under an explicit agreement of policies. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9637454cab67a51953364bd800ea3fb9a7375f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
