# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9302213c035d7f472baadecd91d0a397801874048def28e6fcd2bf9b35b1741",
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
  "slug": "example--b6541a8113edf771e0df76b9",
  "source": {
    "blob": "fea15140812dfdbd84cbc5e6cc8a83616d7159c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 240,
    "path": "GRWTSK/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant39a343b69c2c4fe812d828314559baffdd9e342c2c79afce22b4b9d638690bf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b6541a8113edf771e0df76b94f03b98d491cc2e6237f6802fd35b69073b14d42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant39a343b69c2c4fe812d828314559baffdd9e342c2c79afce22b4b9d638690bf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9302213c035d7f472baadecd91d0a397801874048def28e6fcd2bf9b35b1741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    ¬ canonicalLinkCondition .edge .vertex
      backgroundMergeCut backgroundMergeRepair := by
  intro condition
  rcases condition with
    ⟨_pair, _foregroundNonempty, _foregroundLink, _backgroundLink,
      _beforeManifold, _afterManifold, _foregroundBetti, backgroundComponents⟩
  have unequal :
      backgroundBetaZero .vertex backgroundMergeBefore ≠
        backgroundBetaZero .vertex backgroundMergeRepair.apply := by
    rw [backgroundMergeRepair_apply]
    decide
  exact unequal backgroundComponents

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant39a343b69c2c4fe812d828314559baffdd9e342c2c79afce22b4b9d638690bf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CanonicalRasterSurgery/Variant39a343b69c2c4fe812d828314559baffdd9e342c2c79afce22b4b9d638690bf0.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fea15140812dfdbd84cbc5e6cc8a83616d7159c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
