# union_ae_eq_right_of_ae_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cccca3b4-8ebb-d062-8d2d-63375201e75b",
  "kind": "theorem",
  "lexical_name": "union_ae_eq_right_of_ae_eq_empty",
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
  "slug": "union-ae-eq-right-of-ae-eq-empty--2d130160cb3a73132e5ae50b",
  "source": {
    "blob": "f4e1d494be4e022a3e627042960c334d05010580",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 280,
    "path": "GRWTSK/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d130160cb3a73132e5ae50bde5ae5e799a7028e904b163343a45bf3e743c1be",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cccca3b4-8ebb-d062-8d2d-63375201e75b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem union_ae_eq_right_of_ae_eq_empty (h : s =ᵐ[μ] ∅) : s ∪ t =ᵐ[μ] t :=
  (ae_eq_set_union h .rfl).trans <| by rw [empty_union]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AE/Variant03267ffb01be6c7e0ef047324690fb0b69c089550686101485aceec46f28b1cb.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e1d494be4e022a3e627042960c334d05010580` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
