# Slice.Pos.lt_ofSliceTo_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2616f662-0144-0fcd-6786-77339ef564a4",
  "kind": "theorem",
  "lexical_name": "Slice.Pos.lt_ofSliceTo_iff",
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
  "slug": "slice-pos-lt-ofsliceto-iff--23b1d04db574d93e25bb8c9e",
  "source": {
    "blob": "1bcf48349ef59ee0106e60d4c7cb8687f04f051e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 274,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantda1c730bfa61a04e01ed64fc7d0af4092452dd030c429354f8bcbe4820da5c8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23b1d04db574d93e25bb8c9e356e554c0b12287558c1683aa90f767e6ded6adb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantda1c730bfa61a04e01ed64fc7d0af4092452dd030c429354f8bcbe4820da5c8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2616f662-0144-0fcd-6786-77339ef564a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Slice.Pos.lt_ofSliceTo_iff {s : Slice} {p₀ : s.Pos} {p : (s.sliceTo p₀).Pos} {q : s.Pos} :
    q < Pos.ofSliceTo p ↔ ∃ h, Slice.Pos.sliceTo p₀ q h < p := by
  refine ⟨fun h => ⟨Std.le_of_lt (Std.lt_of_le_of_lt (Std.le_refl q) (Std.lt_of_lt_of_le h Pos.ofSliceTo_le)), ?_⟩, fun ⟨h, h'⟩ => ?_⟩
  · simp +singlePass only [← Pos.sliceTo_ofSliceTo (p := p)]
    rwa [Pos.sliceTo_lt_sliceTo_iff]
  · simp +singlePass only [← Pos.ofSliceTo_sliceTo (h := h)]
    rwa [Pos.ofSliceTo_lt_ofSliceTo_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantda1c730bfa61a04e01ed64fc7d0af4092452dd030c429354f8bcbe4820da5c8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantda1c730bfa61a04e01ed64fc7d0af4092452dd030c429354f8bcbe4820da5c8e.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bcf48349ef59ee0106e60d4c7cb8687f04f051e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
