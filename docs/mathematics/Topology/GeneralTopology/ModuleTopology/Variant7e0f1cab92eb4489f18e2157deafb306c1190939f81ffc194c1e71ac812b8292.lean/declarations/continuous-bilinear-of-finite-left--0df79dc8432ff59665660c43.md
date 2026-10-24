# continuous_bilinear_of_finite_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:059ba789-6069-d23b-1ade-ee92ef0c343d",
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
  "slug": "continuous-bilinear-of-finite-left--0df79dc8432ff59665660c43",
  "source": {
    "blob": "5c5ebb603a580def722fd4c059878cde00d7ab5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 564,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0df79dc8432ff59665660c43eb3e8958bd5bd599c1195ade494b8bd9cde0b9fc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:059ba789-6069-d23b-1ade-ee92ef0c343d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–582.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant7e0f1cab92eb4489f18e2157deafb306c1190939f81ffc194c1e71ac812b8292.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c5ebb603a580def722fd4c059878cde00d7ab5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
