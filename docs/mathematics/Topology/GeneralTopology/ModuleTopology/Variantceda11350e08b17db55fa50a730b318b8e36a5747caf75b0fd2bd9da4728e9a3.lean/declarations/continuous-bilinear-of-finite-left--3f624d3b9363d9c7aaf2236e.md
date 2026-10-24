# continuous_bilinear_of_finite_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e3aa2d1b-4aea-4219-a5b1-2f36a8373616",
  "kind": "theorem",
  "lexical_name": "continuous_bilinear_of_finite_left",
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
  "slug": "continuous-bilinear-of-finite-left--3f624d3b9363d9c7aaf2236e",
  "source": {
    "blob": "2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 657,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f624d3b9363d9c7aaf2236e645c5afb2d746d5bc97ded6e3a1f8bcf3c531de1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3aa2d1b-4aea-4219-a5b1-2f36a8373616`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_bilinear_of_finite_left [Module.Finite R A]
    (bil : A →ₗ[R] B →ₗ[R] C) : Continuous (fun ab ↦ bil ab.1 ab.2 : (A × B → C)) := by
  -- `A` is finite and hence admits a surjection from `Rⁿ` for some finite `n`.
  obtain ⟨m, f, hf⟩ := Module.Finite.exists_fin' R A
  -- The induced linear map `φ : Rⁿ × B → A × B` is surjective
  let bil' : (Fin m → R) →ₗ[R] B →ₗ[R] C := bil.comp f
  let φ := f.prodMap (LinearMap.id : B →ₗ[R] B)
  have hφ : Function.Surjective φ := Function.Surjective.prodMap hf fun b ↦ ⟨b, rfl⟩
  -- ... and thus a quotient map, so it suffices to prove that the composite `Rⁿ × B → C` is
  -- continuous.
  rw [Topology.IsQuotientMap.continuous_iff (isQuotientMap_of_surjective hφ)]
  -- But this follows from an earlier result.
  exact continuous_bilinear_of_pi_fintype (Fin m) bil'

/--
If `A`, `B` and `C` have the module topology, and if furthermore `B` is a finite `R`-module,
then any bilinear map `A × B → C` is automatically continuous
-/
@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
