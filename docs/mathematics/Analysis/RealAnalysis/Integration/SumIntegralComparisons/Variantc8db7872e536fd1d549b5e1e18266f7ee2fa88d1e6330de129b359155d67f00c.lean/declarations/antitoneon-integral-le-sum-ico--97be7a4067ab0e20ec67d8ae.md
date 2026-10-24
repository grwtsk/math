# AntitoneOn.integral_le_sum_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e18e8f8052a6b06bdf333c85060d5c41791c343",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:800455b9-f8da-e0e0-7481-9571fe9352e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a00d5f06-d14e-1ab5-8544-168bfbbb911e",
  "kind": "theorem",
  "lexical_name": "AntitoneOn.integral_le_sum_Ico",
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
  "slug": "antitoneon-integral-le-sum-ico--97be7a4067ab0e20ec67d8ae",
  "source": {
    "blob": "4e18e8f8052a6b06bdf333c85060d5c41791c343",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97be7a4067ab0e20ec67d8aea674bdd349b40dfb5c2e2204c4e48aa207cf2b6d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a00d5f06-d14e-1ab5-8544-168bfbbb911e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AntitoneOn.integral_le_sum_Ico (hab : a ≤ b) (hf : AntitoneOn f (Set.Icc a b)) :
    (∫ x in a..b, f x) ≤ ∑ x ∈ Finset.Ico a b, f x := by
  rw [(Nat.sub_add_cancel hab).symm, Nat.cast_add]
  conv =>
    congr
    congr
    · skip
    · skip
    rw [add_comm]
    · skip
    · skip
    congr
    congr
    rw [← zero_add a]
  rw [← Finset.sum_Ico_add, Nat.Ico_zero_eq_range]
  conv =>
    rhs
    congr
    · skip
    ext
    rw [Nat.cast_add]
  apply AntitoneOn.integral_le_sum
  simp only [hf, hab, Nat.cast_sub, add_sub_cancel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SumIntegralComparisons/Variantc8db7872e536fd1d549b5e1e18266f7ee2fa88d1e6330de129b359155d67f00c.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e18e8f8052a6b06bdf333c85060d5c41791c343` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
