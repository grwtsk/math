# toTop₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c338c4b6dc9b9fd085651e2a79f7edbe362dbbcdef157f75c98d052a03a96e2c",
  "kind": "def",
  "lexical_name": "toTop₀",
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
  "slug": "totop--46b6ab7dfebddd18e915391a",
  "source": {
    "blob": "e290e5e78905e50deb6cdf81137648f617b57e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46b6ab7dfebddd18e915391af89161a56e366817eca3d14fefbf0dd55ae9915f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalSimplex/Variant8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c338c4b6dc9b9fd085651e2a79f7edbe362dbbcdef157f75c98d052a03a96e2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toTop₀ : CosimplicialObject TopCat.{0} where
  obj n := ↧(StdSimplex ℝ (Fin (n.len + 1)))
  map f := TopCat.ofHom ⟨_, StdSimplex.continuous_map ℝ f⟩
  map_comp f g := by
    ext : 1
    simp [← StdSimplex.map_comp]
    rfl

/-- The functor `SimplexCategory ⥤ TopCat.{u}`
associating the topological `n`-simplex to `⦋n⦌ : SimplexCategory`. -/
@[simps! obj map, pp_with_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalSimplex/Variant8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant8bb15669acaf67e60e3b95a3b1b59593693d26aa4da6cfeaafa8c7d69f73d376.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e290e5e78905e50deb6cdf81137648f617b57e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
