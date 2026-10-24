# completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8820927ec8132fc992ac591ea4a05149cd121503",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec4fda46-f379-cd7f-42a8-2ef2caeca3d2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2eadba5-089a-2ff2-3263-dfbd557bbac9",
  "kind": "theorem",
  "lexical_name": "completeSpace",
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
  "slug": "completespace--9e2cb210a360e8e85d381faf",
  "source": {
    "blob": "8820927ec8132fc992ac591ea4a05149cd121503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e2cb210a360e8e85d381fafd0710a7753302d402c82610eeac1804ffc336c39",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2eadba5-089a-2ff2-3263-dfbd557bbac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeSpace (h : IsCoherentWith {s : Set (Π i, E i) | IsVonNBounded 𝕜 s}) :
    CompleteSpace (ContinuousMultilinearMap 𝕜 E F) := by
  classical
  wlog hF : T2Space F generalizing F
  · rw [(isUniformInducing_postcomp (SeparationQuotient.mkCLM _ _)
      SeparationQuotient.isUniformInducing_mk).completeSpace_congr]
    · exact this inferInstance
    · intro f
      use (SeparationQuotient.outCLM _ _).compContinuousMultilinearMap f
      simp [DFunLike.ext_iff]
  have H : ∀ {m : Π i, E i},
      Continuous fun f : (Π i, E i) →ᵤ[{s | IsVonNBounded 𝕜 s}] F ↦ toFun _ f m :=
    (uniformContinuous_eval (isVonNBounded_covers) _).continuous
  rw [completeSpace_iff_isComplete_range isUniformInducing_toUniformOnFun, range_toUniformOnFun]
  simp only [setOf_and, setOf_forall]
  apply_rules [IsClosed.isComplete, IsClosed.inter]
  · exact UniformOnFun.isClosed_setOf_continuous h
  · exact isClosed_iInter fun m ↦ isClosed_iInter fun i ↦
      isClosed_iInter fun x ↦ isClosed_iInter fun y ↦ isClosed_eq H (H.add H)
  · exact isClosed_iInter fun m ↦ isClosed_iInter fun i ↦
      isClosed_iInter fun c ↦ isClosed_iInter fun x ↦ isClosed_eq H (H.const_smul _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8820927ec8132fc992ac591ea4a05149cd121503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
