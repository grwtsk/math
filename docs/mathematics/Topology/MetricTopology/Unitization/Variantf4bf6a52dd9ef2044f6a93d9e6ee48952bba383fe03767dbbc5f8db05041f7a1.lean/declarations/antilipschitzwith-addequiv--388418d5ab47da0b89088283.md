# antilipschitzWith_addEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b052ad093668c06bd31a1cfd39ae148606b95b02",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:348e3f6f-0658-a8e4-68f2-4df1a3e367e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cd10f88-a4f9-d0db-037b-bd6e4b94f980",
  "kind": "theorem",
  "lexical_name": "antilipschitzWith_addEquiv",
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
  "slug": "antilipschitzwith-addequiv--388418d5ab47da0b89088283",
  "source": {
    "blob": "b052ad093668c06bd31a1cfd39ae148606b95b02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 167,
    "path": "GRWTSK/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:388418d5ab47da0b89088283286279dde23048212a61554c93ee81bbfab46281",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cd10f88-a4f9-d0db-037b-bd6e4b94f980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem antilipschitzWith_addEquiv :
    AntilipschitzWith 2 (addEquiv 𝕜 A) := by
  refine AddMonoidHomClass.antilipschitz_of_bound (addEquiv 𝕜 A) fun x => ?_
  rw [norm_eq_sup, Prod.norm_def, NNReal.coe_two]
  refine max_le ?_ ?_
  · rw [mul_max_of_nonneg _ _ (zero_le_two : (0 : ℝ) ≤ 2)]
    exact le_max_of_le_left ((le_add_of_nonneg_left (norm_nonneg _)).trans_eq (two_mul _).symm)
  · nontriviality A
    calc
      ‖algebraMap 𝕜 _ x.fst + mul 𝕜 A x.snd‖ ≤ ‖algebraMap 𝕜 _ x.fst‖ + ‖mul 𝕜 A x.snd‖ :=
        norm_add_le _ _
      _ = ‖x.fst‖ + ‖x.snd‖ := by
        rw [norm_algebraMap', (AddMonoidHomClass.isometry_iff_norm (mul 𝕜 A)).mp (isometry_mul 𝕜 A)]
      _ ≤ _ := (add_le_add (le_max_left _ _) (le_max_right _ _)).trans_eq (two_mul _).symm

open Bornology Filter
open scoped Uniformity Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Unitization/Variantf4bf6a52dd9ef2044f6a93d9e6ee48952bba383fe03767dbbc5f8db05041f7a1.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b052ad093668c06bd31a1cfd39ae148606b95b02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
