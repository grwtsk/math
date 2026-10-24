# Pos.lt_ofSliceTo_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:137e9dae-0c8e-7b4a-7edc-87288e3f259e",
  "kind": "theorem",
  "lexical_name": "Pos.lt_ofSliceTo_iff",
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
  "slug": "pos-lt-ofsliceto-iff--10ea2ecd87911bac15730ad4",
  "source": {
    "blob": "1bcf48349ef59ee0106e60d4c7cb8687f04f051e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 298,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantda1c730bfa61a04e01ed64fc7d0af4092452dd030c429354f8bcbe4820da5c8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ea2ecd87911bac15730ad4f4307b852ecf714abab58576c9b449e9e38eaed1",
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

Occurrence: `result:137e9dae-0c8e-7b4a-7edc-87288e3f259e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pos.lt_ofSliceTo_iff {s : String} {p₀ : s.Pos} {p : (s.sliceTo p₀).Pos} {q : s.Pos} :
    q < Pos.ofSliceTo p ↔ ∃ h, Pos.sliceTo p₀ q h < p := by
  refine ⟨fun h => ⟨Pos.le_of_lt (Pos.lt_of_lt_of_le h Pos.ofSliceTo_le), ?_⟩, fun ⟨h, h'⟩ => ?_⟩
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantda1c730bfa61a04e01ed64fc7d0af4092452dd030c429354f8bcbe4820da5c8e.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bcf48349ef59ee0106e60d4c7cb8687f04f051e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
