# representedPlane_mem_intrinsicPivotDomain_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a62b9be6-fced-5b66-1729-0dafdd43d6ae",
  "kind": "theorem",
  "lexical_name": "representedPlane_mem_intrinsicPivotDomain_iff",
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
  "slug": "representedplane-mem-intrinsicpivotdomain-iff--e3bf812e60697ec65edd2ecc",
  "source": {
    "blob": "eb59a47773381d8349d660e1fea435dafb6c636f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 116,
    "path": "GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3bf812e60697ec65edd2ecc76ef64210c0e73f611d7f1d6c4f760fd08144ae2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a62b9be6-fced-5b66-1729-0dafdd43d6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem representedPlane_mem_intrinsicPivotDomain_iff
    (A : FullRankFrame k n) (I : Fin k ↪o Fin n) :
    representedPlane A ∈ intrinsicPivotDomain I ↔ columnMinor A.val I ≠ 0 := by
  constructor
  · rintro ⟨B, hB⟩
    have hr : frameRowSpace A.val = frameRowSpace B.val :=
      (congrArg Subtype.val hB).symm
    obtain ⟨t, _, ht⟩ := columnMinor_proportional_of_frameRowSpace_eq
      A.val B.val (normalizedPivotFrame_rank I B) hr
    intro hz
    have hb := ht I
    simp only [columnMinor, B.property, Matrix.det_one] at hb
    change (columnSubmatrix A.val I).det = 0 at hz
    rw [hz, mul_zero] at hb
    exact one_ne_zero hb
  · intro hA
    refine ⟨⟨pivotNormalize A.val I, pivotNormalize_pivot A.val I hA⟩, ?_⟩
    exact Subtype.ext (frameRowSpace_pivotNormalize A.val I hA)

/-- Each intrinsic pivot domain is open in the constructed actual atlas topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PivotCech/Variant2fffe2b0f278cf49396ac41faf02afd357e9ca8f9af685c2786a07fc04a8d1aa.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb59a47773381d8349d660e1fea435dafb6c636f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
