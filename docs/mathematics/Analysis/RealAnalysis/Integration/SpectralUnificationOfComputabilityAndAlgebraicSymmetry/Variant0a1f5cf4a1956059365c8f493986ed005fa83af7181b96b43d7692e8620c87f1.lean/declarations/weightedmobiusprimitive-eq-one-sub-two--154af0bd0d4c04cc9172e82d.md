# weightedMobiusPrimitive_eq_one_sub_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "93b3e1df1edd6d6f55a291a43f55be52f3387428",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb888d97-ba96-9939-9bb5-1baec36dad82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8bc45998-7c46-2e27-f119-2320e36c29fe",
  "kind": "theorem",
  "lexical_name": "weightedMobiusPrimitive_eq_one_sub_two",
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
  "slug": "weightedmobiusprimitive-eq-one-sub-two--154af0bd0d4c04cc9172e82d",
  "source": {
    "blob": "93b3e1df1edd6d6f55a291a43f55be52f3387428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:154af0bd0d4c04cc9172e82de6c013addec1cc85eaaf0bf9576f6eff53a0997d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bc45998-7c46-2e27-f119-2320e36c29fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMobiusPrimitive_eq_one_sub_two {s : ℝ}
    (hstart : Real.log 2 ≤ s) (hstop : s < Real.log 3) :
    weightedMobiusPrimitive s = 1 - 1 / Real.sqrt 2 := by
  have hf : ⌊Real.exp s⌋₊ = 2 := (Nat.floor_eq_iff (Real.exp_pos s).le).2 ⟨
    by simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 2),
      Nat.cast_ofNat] using (Real.exp_le_exp.mpr hstart),
    by
      have hh := Real.exp_lt_exp.mpr hstop
      rw [Real.exp_log (by norm_num : (0 : ℝ) < 3)] at hh
      norm_num only [Nat.cast_ofNat] at *
      exact hh⟩
  norm_num [weightedMobiusPrimitive, hf, Finset.sum_Icc_succ_top]
  ring

/-- The atom at log 3 is included by the closed-right floor convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0a1f5cf4a1956059365c8f493986ed005fa83af7181b96b43d7692e8620c87f1.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93b3e1df1edd6d6f55a291a43f55be52f3387428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
