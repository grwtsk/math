# densityProcess_antitone_kernel_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:77836311-d6fb-3954-e229-0644cbc74e25",
  "kind": "lemma",
  "lexical_name": "densityProcess_antitone_kernel_right",
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
  "slug": "densityprocess-antitone-kernel-right--369e74ed157d06c9a1740fc0",
  "source": {
    "blob": "8dced0157fdc3759f9e402ccc9bb10dec0a6e0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 333,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:369e74ed157d06c9a1740fc02132c0f97971773632281b971d1a7f75344d9d28",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77836311-d6fb-3954-e229-0644cbc74e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma densityProcess_antitone_kernel_right {ν' : Kernel α γ}
    (hνν' : ν ≤ ν') (hκν : fst κ ≤ ν) (n : ℕ) (a : α) (x : γ) (s : Set β) :
    densityProcess κ ν' n a x s ≤ densityProcess κ ν n a x s := by
  unfold densityProcess
  have h_le : κ a (countablePartitionSet n x ×ˢ s) ≤ ν a (countablePartitionSet n x) :=
    meas_countablePartitionSet_le_of_fst_le hκν n a x s
  by_cases h0 : ν a (countablePartitionSet n x) = 0
  · simp [le_antisymm (h_le.trans h0.le) zero_le', h0]
  gcongr
  · simp only [ne_eq, ENNReal.div_eq_top, h0, and_false, false_or, not_and, not_not]
    exact fun h_top ↦ eq_top_mono h_le h_top
  · apply hνν'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dced0157fdc3759f9e402ccc9bb10dec0a6e0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
