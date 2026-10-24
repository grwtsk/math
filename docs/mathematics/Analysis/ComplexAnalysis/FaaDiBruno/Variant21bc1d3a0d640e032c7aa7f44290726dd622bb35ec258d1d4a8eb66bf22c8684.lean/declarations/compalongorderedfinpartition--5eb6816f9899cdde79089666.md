# compAlongOrderedFinpartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bfbf4b65549052d333d42db250b27a88c4bfa9eadbd97ea59a766938fd5bcef4",
  "kind": "def",
  "lexical_name": "compAlongOrderedFinpartition",
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
  "slug": "compalongorderedfinpartition--5eb6816f9899cdde79089666",
  "source": {
    "blob": "b0850d20114feb43c262202e4c74e29984503f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 773,
    "path": "GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5eb6816f9899cdde7908966620c556d8a14103e24e0878a99f05a3fa1293f5cc",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bfbf4b65549052d333d42db250b27a88c4bfa9eadbd97ea59a766938fd5bcef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compAlongOrderedFinpartition (f : F [×c.length]→L[𝕜] G) (p : ∀ i, E [×c.partSize i]→L[𝕜] F) :
    E[×n]→L[𝕜] G where
  toMultilinearMap :=
    MultilinearMap.mk' (fun v ↦ f (c.applyOrderedFinpartition p v))
      (fun v i x y ↦ by
        simp only [applyOrderedFinpartition_update_right,
          ContinuousMultilinearMap.map_update_add])
      (fun v i c x ↦ by
        simp only [applyOrderedFinpartition_update_right,
          ContinuousMultilinearMap.map_update_smul])
  cont := by
    apply f.cont.comp
    change Continuous (fun v m ↦ p m (v ∘ c.emb m))
    fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/FaaDiBruno/Variant21bc1d3a0d640e032c7aa7f44290726dd622bb35ec258d1d4a8eb66bf22c8684.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0850d20114feb43c262202e4c74e29984503f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
