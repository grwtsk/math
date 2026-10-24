# map_bracket_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af361ec7-6786-874e-5f08-fa4545d9725c",
  "kind": "theorem",
  "lexical_name": "map_bracket_eq",
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
  "slug": "map-bracket-eq--e2a357aa500be150ec68ae8e",
  "source": {
    "blob": "634b9b7800cefcb2b69b03285f09854bedb18e10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 216,
    "path": "GRWTSK/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2a357aa500be150ec68ae8ed43cfbac3b61d980fab991b6232559bdef931159",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af361ec7-6786-874e-5f08-fa4545d9725c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_bracket_eq [LieModule R L M] : map f ⁅I, N⁆ = ⁅I, map f N⁆ := by
  rw [← toSubmodule_inj, toSubmodule_map, lieIdeal_oper_eq_linear_span,
    lieIdeal_oper_eq_linear_span, Submodule.map_span]
  congr
  ext m
  constructor
  · rintro ⟨-, ⟨⟨x, ⟨n, hn⟩, rfl⟩, hm⟩⟩
    simp only [LieModuleHom.coe_toLinearMap, LieModuleHom.map_lie] at hm
    exact ⟨x, ⟨f n, (mem_map (f n)).mpr ⟨n, hn, rfl⟩⟩, hm⟩
  · rintro ⟨x, ⟨m₂, hm₂ : m₂ ∈ map f N⟩, rfl⟩
    obtain ⟨n, hn, rfl⟩ := (mem_map m₂).mp hm₂
    exact ⟨⁅x, n⁆, ⟨x, ⟨n, hn⟩, rfl⟩, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IdealOperations/Varianteb8fd33b947051ce42d38c4a0cdfe1a5e2a97ba6df9840ad31abdb33188fa6fd.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `634b9b7800cefcb2b69b03285f09854bedb18e10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
