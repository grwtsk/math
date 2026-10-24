# labelCongruence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b340c2d2d1896f516c07cac304534f7aa88e4ef87856c28ff0b4f00f25aeafd3",
  "kind": "def",
  "lexical_name": "labelCongruence",
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
  "slug": "labelcongruence--210129bfe99fe7378b67b7a7",
  "source": {
    "blob": "bb5e2154781b31cedeff4dbeaee238ebed7b55ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:210129bfe99fe7378b67b7a7c820fb4318b3e8610c892cbb8a29325d5ba7f9be",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b340c2d2d1896f516c07cac304534f7aa88e4ef87856c28ff0b4f00f25aeafd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def labelCongruence (color : Carrier → Carrier → Lat)
    (witness : IsGraphWitness color) (bound : Lat) : Congruence (graphAlgebra color) := by
  classical
  refine ⟨⟨fun left right => color left right ≤ bound, ⟨?_, ?_, ?_⟩⟩, ?_⟩
  · intro point
    rw [(witness.2.1 point point).mpr rfl]
    exact bot_le
  · intro left right below
    rwa [witness.1 right left]
  · intro left middle right first second
    exact (witness.2.2.1 left right middle).trans (sup_le first second)
  · intro index left right below
    exact ((((Fintype.equivFin
      {placement : Carrier → Carrier // Admissible color placement}).symm index).2) _ _).trans
        (below ⟨0, by change 0 < 1; decide⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variantfefaf6d5af9f7185d0fef34db55dfbd338a37a4192fbc380531a0204efde4bc1.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb5e2154781b31cedeff4dbeaee238ebed7b55ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
