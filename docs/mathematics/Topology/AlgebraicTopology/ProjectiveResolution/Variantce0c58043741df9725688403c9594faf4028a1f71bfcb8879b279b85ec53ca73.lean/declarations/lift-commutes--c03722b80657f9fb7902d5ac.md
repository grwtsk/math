# lift_commutes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e78f9cf6-ab09-6f40-13a9-b9898cf0c5da",
  "kind": "theorem",
  "lexical_name": "lift_commutes",
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
  "slug": "lift-commutes--c03722b80657f9fb7902d5ac",
  "source": {
    "blob": "ae16bb73f658f03d728903fd47fccf2649c84e6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 212,
    "path": "GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c03722b80657f9fb7902d5ac3121242fc3380e1cdba4516ddced7ad18af4abf6",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e78f9cf6-ab09-6f40-13a9-b9898cf0c5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_commutes {Y Z : C} (f : Y ⟶ Z) (P : ProjectiveResolution Y)
    (Q : ProjectiveResolution Z) : lift f P Q ≫ Q.π = P.π ≫ (ChainComplex.single₀ C).map f := by
  ext; simp [lift, liftZero]
set_option linter.uppercaseLean3 false in
#align category_theory.ProjectiveResolution.lift_commutes CategoryTheory.ProjectiveResolution.lift_commutes

-- Now that we've checked this property of the lift,
-- we can seal away the actual definition.
end ProjectiveResolution

end

namespace ProjectiveResolution

variable [HasZeroObject C] [Preadditive C] [HasEqualizers C] [HasImages C]

/-- An auxiliary definition for `liftHomotopyZero`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ProjectiveResolution/Variantce0c58043741df9725688403c9594faf4028a1f71bfcb8879b279b85ec53ca73.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae16bb73f658f03d728903fd47fccf2649c84e6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
