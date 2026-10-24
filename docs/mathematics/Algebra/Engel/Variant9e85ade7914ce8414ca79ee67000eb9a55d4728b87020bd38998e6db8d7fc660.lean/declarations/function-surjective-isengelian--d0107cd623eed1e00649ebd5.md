# Function.Surjective.isEngelian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f99d12b-584a-2331-847a-bcad2b635b7f",
  "kind": "theorem",
  "lexical_name": "Function.Surjective.isEngelian",
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
  "slug": "function-surjective-isengelian--d0107cd623eed1e00649ebd5",
  "source": {
    "blob": "41562237b006546b33436bfdbe8c3458a16e8ef7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 175,
    "path": "GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0107cd623eed1e00649ebd5adf416f7c031b4e2a126bd64c58c82cc1598f037",
  "verification": {
    "reference": "docs/verification/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f99d12b-584a-2331-847a-bcad2b635b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Surjective.isEngelian {f : L →ₗ⁅R⁆ L₂} (hf : Function.Surjective f)
    (h : LieAlgebra.IsEngelian.{u₁, u₂, u₄} R L) : LieAlgebra.IsEngelian.{u₁, u₃, u₄} R L₂ := by
  intro M _i1 _i2 _i3 _i4 h'
  letI : LieRingModule L M := LieRingModule.compLieHom M f
  letI : LieModule R L M := compLieHom M f
  have hnp : ∀ x, IsNilpotent (toEnd R L M x) := fun x => h' (f x)
  have surj_id : Function.Surjective (LinearMap.id : M →ₗ[R] M) := Function.surjective_id
  haveI : LieModule.IsNilpotent L M := h M hnp
  apply hf.lieModuleIsNilpotent _ surj_id
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Engel/Variant9e85ade7914ce8414ca79ee67000eb9a55d4728b87020bd38998e6db8d7fc660.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41562237b006546b33436bfdbe8c3458a16e8ef7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
