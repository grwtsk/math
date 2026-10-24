# Cover.changeProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4714d60dac3d2c585fe331d477562473c2f8436632ae671024ee823cfcaa754",
  "kind": "def",
  "lexical_name": "Cover.changeProp",
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
  "slug": "cover-changeprop--9389ad87278585949a15aad5",
  "source": {
    "blob": "6747f40d82e02f9e85d0bf84aae3009259a7d2e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 124,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9389ad87278585949a15aad5838e1eaf59af7cfbf22732212377241655133a56",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4714d60dac3d2c585fe331d477562473c2f8436632ae671024ee823cfcaa754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cover.changeProp [JointlySurjective K] (𝒰 : X.Cover K) (h : ∀ j, Q (𝒰.f j)) :
    X.Cover (precoverage Q) where
  I₀ := 𝒰.I₀
  X := 𝒰.X
  f := 𝒰.f
  mem₀ := by
    rw [presieve₀_mem_precoverage_iff]
    exact ⟨𝒰.exists_eq, h⟩

/-- We construct a cover from another, by providing the needed fields and showing that the
provided fields are isomorphic with the original cover. -/
@[simps I₀ X f]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6747f40d82e02f9e85d0bf84aae3009259a7d2e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
