# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52aa06ab30f4dc850a60e13299e0bc987946df1113ff9bf2e19de38ea9a25995",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--2b551a3932c11b333d0ccc5a",
  "source": {
    "blob": "ac968bd123099b154885ed6bf1ffeebaf356a99c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b551a3932c11b333d0ccc5aa5ba70418f2c53ca26d4158e7f468fbb35431d36",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52aa06ab30f4dc850a60e13299e0bc987946df1113ff9bf2e19de38ea9a25995`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [AddZeroClass R] [SemilatticeSup R] [AddLeftMono R] [AddRightMono R] :
    Max (PseudoMetric X R) where
  max d d' := {
    toFun := fun x y ↦ (d x y) ⊔ (d' x y)
    refl' _ := by simp
    symm' x y := by simp [d.symm, d'.symm]
    triangle' := by
      intro x y z
      simp only [sup_le_iff]
      refine ⟨(d.triangle x y z).trans ?_, (d'.triangle x y z).trans ?_⟩ <;>
      apply add_le_add <;> simp
  }

@[simp, push_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/BundledFun/Variant88c3e212a47fdb5a30cf70e41824997f163c0af788d8e105df2f4f57d96ade34.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac968bd123099b154885ed6bf1ffeebaf356a99c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
