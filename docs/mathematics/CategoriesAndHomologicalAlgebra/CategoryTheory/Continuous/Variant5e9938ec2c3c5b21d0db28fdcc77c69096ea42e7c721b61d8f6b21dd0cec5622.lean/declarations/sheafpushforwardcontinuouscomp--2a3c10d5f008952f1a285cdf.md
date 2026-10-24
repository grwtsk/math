# sheafPushforwardContinuousComp'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a07390d8fa72a5256307bc15ff1aac35cfa0627a30656b394b9d5eee6645e8fc",
  "kind": "def",
  "lexical_name": "sheafPushforwardContinuousComp'",
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
  "slug": "sheafpushforwardcontinuouscomp--2a3c10d5f008952f1a285cdf",
  "source": {
    "blob": "9653cc9a1c24c418f43b07c86a345edcbe7d173d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 430,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a3c10d5f008952f1a285cdfe90dadcd003e0d7380edb708028a1b7be035f43a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a07390d8fa72a5256307bc15ff1aac35cfa0627a30656b394b9d5eee6645e8fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafPushforwardContinuousComp'
    [IsContinuous G K L] [IsContinuous FG J L] :
    sheafPushforwardContinuous G A K L ⋙ sheafPushforwardContinuous F A J K ≅
    sheafPushforwardContinuous FG A J L :=
  letI := isContinuous_comp F G J K L
  sheafPushforwardContinuousComp _ _ _ _ _ _ ≪≫ sheafPushforwardContinuousIso eFG _ _ _

end Functor

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- If `F ⊣ G` is an adjunction between continuous functors, the associated
pushforwards on sheaves are adjoint. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant5e9938ec2c3c5b21d0db28fdcc77c69096ea42e7c721b61d8f6b21dd0cec5622.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9653cc9a1c24c418f43b07c86a345edcbe7d173d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
