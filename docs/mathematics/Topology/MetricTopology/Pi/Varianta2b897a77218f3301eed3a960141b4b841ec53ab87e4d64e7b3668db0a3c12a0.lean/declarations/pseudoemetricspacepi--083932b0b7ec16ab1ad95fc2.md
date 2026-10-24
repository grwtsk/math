# pseudoEMetricSpacePi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6fc3fcdfb88a4213f652306393fea2e371271efc050e9f1df3df3b195a469fac",
  "kind": "instance",
  "lexical_name": "pseudoEMetricSpacePi",
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
  "slug": "pseudoemetricspacepi--083932b0b7ec16ab1ad95fc2",
  "source": {
    "blob": "1fb9255104c67944055cad0726de0707403f047f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 58,
    "path": "GRWTSK/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:083932b0b7ec16ab1ad95fc24fe67064fed62bc5cdd2879cfb0ce445e80d288e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6fc3fcdfb88a4213f652306393fea2e371271efc050e9f1df3df3b195a469fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance pseudoEMetricSpacePi [∀ b, PseudoEMetricSpace (π b)] : PseudoEMetricSpace (∀ b, π b) where
  edist_self f := bot_unique <| Finset.sup_le <| by simp
  edist_comm f g := by simp [edist_pi_def, edist_comm]
  edist_triangle _ g _ := edist_pi_le_iff.2 fun b => le_trans (edist_triangle _ (g b) _)
    (add_le_add (edist_le_pi_edist _ _ _) (edist_le_pi_edist _ _ _))
  toUniformSpace := Pi.uniformSpace _
  uniformity_edist := by
    simp only [Pi.uniformity, PseudoEMetricSpace.uniformity_edist, comap_iInf, gt_iff_lt,
      preimage_setOf_eq, comap_principal, edist_pi_def]
    rw [iInf_comm]; congr; funext ε
    rw [iInf_comm]; congr; funext εpos
    simp [setOf_forall, εpos]

end Pi

variable {γ : Type w} [EMetricSpace γ]

section Pi

open Finset

variable {π : β → Type*} [Fintype β]

/-- The product of a finite number of emetric spaces, with the max distance, is still
an emetric space.
This construction would also work for infinite products, but it would not give rise
to the product topology. Hence, we only formalize it in the good situation of finitely many
spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Pi/Varianta2b897a77218f3301eed3a960141b4b841ec53ab87e4d64e7b3668db0a3c12a0.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb9255104c67944055cad0726de0707403f047f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
