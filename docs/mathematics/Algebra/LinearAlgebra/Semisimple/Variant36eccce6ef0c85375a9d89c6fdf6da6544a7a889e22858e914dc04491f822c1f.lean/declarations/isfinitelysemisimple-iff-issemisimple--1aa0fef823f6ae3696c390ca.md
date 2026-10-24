# isFinitelySemisimple_iff_isSemisimple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8290d762-52b4-963b-2869-c6d6be01e978",
  "kind": "lemma",
  "lexical_name": "isFinitelySemisimple_iff_isSemisimple",
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
  "slug": "isfinitelysemisimple-iff-issemisimple--1aa0fef823f6ae3696c390ca",
  "source": {
    "blob": "548a7037c0ca9fa892b20ff0c38edc81b4b5d899",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 184,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1aa0fef823f6ae3696c390cadb59d6b2127e932deb898865f0456948c1c1d4b4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8290d762-52b4-963b-2869-c6d6be01e978`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isFinitelySemisimple_iff_isSemisimple [Module.Finite R M] :
    f.IsFinitelySemisimple ↔ f.IsSemisimple := by
  refine ⟨fun hf ↦ isSemisimple_iff.mpr fun p hp ↦ ?_, IsSemisimple.isFinitelySemisimple⟩
  obtain ⟨q, -, hq₁, hq₂, hq₃⟩ :=
    isFinitelySemisimple_iff.mp hf ⊤ (invtSubmodule.top_mem f) inferInstance p hp le_top
  exact ⟨q, hq₁, hq₂, codisjoint_iff.mpr hq₃⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `548a7037c0ca9fa892b20ff0c38edc81b4b5d899` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
