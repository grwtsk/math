# LocalCrossSquareEstimate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7620cd2b593ac8e0d432943433f5ce6cbdfd498677c86081519b4e23b0e937f3",
  "kind": "def",
  "lexical_name": "LocalCrossSquareEstimate",
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
  "slug": "localcrosssquareestimate--95482c4440e13571f3fcb079",
  "source": {
    "blob": "95315e45cd8a537d7e08773d252f82381da88187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95482c4440e13571f3fcb07969457791638e03f1d19585533c887be40b4c7b95",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7620cd2b593ac8e0d432943433f5ce6cbdfd498677c86081519b4e23b0e937f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LocalCrossSquareEstimate
    (data : LocalToGlobalCarlesonData) (A : ℝ) : Prop :=
  0 ≤ A ∧ ∀ node, ‖data.contribution node‖ ≤ A * data.mass node

/-- Levelwise coefficient-mass packing. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LocalToGlobalCarleson/Variant207bd5e0e88e3f84ff2ae0813336dd752da9c36b8450a9e68b3e2600bfadeac7.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95315e45cd8a537d7e08773d252f82381da88187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
