# continuous_bilinear_of_finite_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27dc805877bd08369627e7a2f39843214cd8651c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 575,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:480bcf52-0356-8ab5-09cf-05d54bf75998",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:350b00da-ccfe-7042-96e2-84963fb72a76",
  "kind": "theorem",
  "lexical_name": "continuous_bilinear_of_finite_right",
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
  "slug": "continuous-bilinear-of-finite-right--a253940f95bf81159861981b",
  "source": {
    "blob": "27dc805877bd08369627e7a2f39843214cd8651c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 595,
    "line": 575,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a253940f95bf81159861981b9c63f3a3fd30a921caa629a696274ab91b46d78b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:350b00da-ccfe-7042-96e2-84963fb72a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–595.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_bilinear_of_finite_right [Module.Finite R B]
    (bil : A →ₗ[R] B →ₗ[R] C) : Continuous (fun ab ↦ bil ab.1 ab.2 : (A × B → C)) := by
  -- We already proved this when `A` is finite instead of `B`, so it's obvious by symmetry
  rw [show (fun ab ↦ bil ab.1 ab.2 : (A × B → C)) =
    ((fun ba ↦ bil.flip ba.1 ba.2 : (B × A → C)) ∘ (Prod.swap : A × B → B × A)) by ext; simp]
  fun_prop

end ring

end bilinear

section algebra

variable (R : Type*) [CommRing R] [TopologicalSpace R] [IsTopologicalRing R]
    (D : Type*) [Ring D] [Algebra R D] [Module.Finite R D] [TopologicalSpace D]
    [IsModuleTopology R D]

include R in
/-- If `D` is an `R`-algebra, finite as an `R`-module, and if `D` has the module topology,
then multiplication on `D` is automatically continuous. -/
@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant841e539df16a70db41bb55e0345fb365098f120c98247620f48461a420b79f6b.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27dc805877bd08369627e7a2f39843214cd8651c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
