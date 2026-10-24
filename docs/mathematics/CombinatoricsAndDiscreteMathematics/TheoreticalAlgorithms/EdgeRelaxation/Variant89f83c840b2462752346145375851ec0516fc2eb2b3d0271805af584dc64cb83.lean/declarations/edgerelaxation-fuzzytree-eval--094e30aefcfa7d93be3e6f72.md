# EdgeRelaxation.FuzzyTree.eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bd41a7383ced89d2d977d09894252fa3ef47a1c5fc9a74d9e0db41fb449a06f",
  "kind": "def",
  "lexical_name": "EdgeRelaxation.FuzzyTree.eval",
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
  "slug": "edgerelaxation-fuzzytree-eval--094e30aefcfa7d93be3e6f72",
  "source": {
    "blob": "13e86a394e68c0fd97d3424f93e69f2dbc11d9e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 333,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:094e30aefcfa7d93be3e6f723ebc3935ae38c511f0662c4579a7d711deeda834",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bd41a7383ced89d2d977d09894252fa3ef47a1c5fc9a74d9e0db41fb449a06f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EdgeRelaxation.FuzzyTree.eval
    (ρ : EdgeRelaxation.FuzzyTree.Valuation α) :
    FormulaTree α → EdgeRelaxation.DensityExpr
  | .var a => .density (ρ a)
  | .falsum => .density EdgeRelaxation.EpsilonDensity.zero
  | .truth => .density EdgeRelaxation.EpsilonDensity.one
  | .neg p => .neg (EdgeRelaxation.FuzzyTree.eval ρ p)
  | .conj p q => .conj
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .disj p q => .disj
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .impl p q => .impl
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .eqv p q => .eqv
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)
  | .nand p q => .nand
      (EdgeRelaxation.FuzzyTree.eval ρ p)
      (EdgeRelaxation.FuzzyTree.eval ρ q)

/-- The relaxed three-row pole as a fuzzy valuation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EdgeRelaxation/Variant89f83c840b2462752346145375851ec0516fc2eb2b3d0271805af584dc64cb83.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13e86a394e68c0fd97d3424f93e69f2dbc11d9e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
