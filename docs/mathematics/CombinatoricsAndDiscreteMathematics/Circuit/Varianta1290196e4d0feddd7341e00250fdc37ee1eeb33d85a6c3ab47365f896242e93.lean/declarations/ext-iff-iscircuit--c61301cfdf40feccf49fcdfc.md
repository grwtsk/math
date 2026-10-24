# ext_iff_isCircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a4d6fff-1636-d702-ea59-9db22621fdf3",
  "kind": "lemma",
  "lexical_name": "ext_iff_isCircuit",
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
  "slug": "ext-iff-iscircuit--c61301cfdf40feccf49fcdfc",
  "source": {
    "blob": "a0b8673db619c1bc16a9da99a689b62d313d45b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 412,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c61301cfdf40feccf49fcdfca165318a04127f3d6d6bab77ae1080b682539a12",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a4d6fff-1636-d702-ea59-9db22621fdf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ext_iff_isCircuit {M₁ M₂ : Matroid α} :
    M₁ = M₂ ↔ M₁.E = M₂.E ∧ ∀ C, M₁.IsCircuit C ↔ M₂.IsCircuit C :=
  ⟨fun h ↦ by simp [h], fun h ↦ ext_isCircuit h.1 fun C hC ↦ h.2 (C := C)⟩

section Elimination

/-! ### Circuit Elimination -/

variable {ι : Type*} {J C₀ C₁ C₂ : Set α}

/-- A version of `Matroid.IsCircuit.strong_multi_elimination` that is phrased using insertion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0b8673db619c1bc16a9da99a689b62d313d45b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
