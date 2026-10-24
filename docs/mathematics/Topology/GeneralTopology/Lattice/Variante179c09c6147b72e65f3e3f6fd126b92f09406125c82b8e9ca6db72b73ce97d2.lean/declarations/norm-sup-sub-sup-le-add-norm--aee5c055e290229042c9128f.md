# norm_sup_sub_sup_le_add_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88cd1558-a1bb-8c48-dcf4-865516dc63e4",
  "kind": "theorem",
  "lexical_name": "norm_sup_sub_sup_le_add_norm",
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
  "slug": "norm-sup-sub-sup-le-add-norm--aee5c055e290229042c9128f",
  "source": {
    "blob": "1b29fa86d839a12a887566724651dae49830f26a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aee5c055e290229042c9128fe0c5c7b286bb819666c2e717a176003cfd2be415",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88cd1558-a1bb-8c48-dcf4-865516dc63e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sup_sub_sup_le_add_norm (a b c d : α) : ‖a ⊔ b - c ⊔ d‖ ≤ ‖a - c‖ + ‖b - d‖ := by
  rw [← norm_abs_eq_norm (a - c), ← norm_abs_eq_norm (b - d)]
  refine le_trans (solid ?_) (norm_add_le |a - c| |b - d|)
  rw [abs_of_nonneg (add_nonneg (abs_nonneg (a - c)) (abs_nonneg (b - d)))]
  calc
    |a ⊔ b - c ⊔ d| = |a ⊔ b - c ⊔ b + (c ⊔ b - c ⊔ d)| := by rw [sub_add_sub_cancel]
    _ ≤ |a ⊔ b - c ⊔ b| + |c ⊔ b - c ⊔ d| := abs_add_le _ _
    _ ≤ |a - c| + |b - d| := by
      apply add_le_add
      · exact abs_sup_sub_sup_le_abs _ _ _
      · rw [sup_comm c, sup_comm c]
        exact abs_sup_sub_sup_le_abs _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b29fa86d839a12a887566724651dae49830f26a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
