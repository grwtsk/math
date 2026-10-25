# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MdifferentiableWithinAtTotalSpace.Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.VectorBundle.injective_eval_contMDiffAt_sec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1410634c-6800-8cda-b04e-d2b3273305b5",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MdifferentiableWithinAtTotalSpace.Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.VectorBundle.injective_eval_contMDiffAt_sec",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-mdifferentia--c86e69ebf8b4a8b53d5041b5",
  "source": {
    "blob": "1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 759,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c86e69ebf8b4a8b53d5041b5d4993fe20f1ddc957305b022c2b2bfbaa5362096",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1410634c-6800-8cda-b04e-d2b3273305b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 759–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MdifferentiableWithinAtTotalSpace.Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.VectorBundle.injective_eval_contMDiffAt_sec [∀ x, Module 𝕜 (V x)]
    (W : Type*) [AddCommGroup W] [Module 𝕜 W] [TopologicalSpace W] (x : M) :
    Function.Injective
      (fun A : V x →L[𝕜] W ↦
        fun (Z : Π x, V x) (_ : CMDiffAt k (T% Z) x) ↦ A (Z x)) := by
  intro X X' h
  ext σ₀
  simpa using congr($h (extend F σ₀) (contMDiffAt_extend ..))

end FiberBundle
end extend
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant757a53e79e78cfc452224fd761a3b92ce94dcd90907a13194cd242303140189d.lean#L759).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dbddb9c92d0b28a17ea483b67f12d4fb1ab9031` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
