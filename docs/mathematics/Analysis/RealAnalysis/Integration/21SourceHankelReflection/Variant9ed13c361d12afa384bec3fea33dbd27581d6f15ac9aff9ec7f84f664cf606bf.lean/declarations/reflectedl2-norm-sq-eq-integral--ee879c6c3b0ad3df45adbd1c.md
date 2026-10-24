# reflectedL2_norm_sq_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e43df4c20fb350feae75604083ad76504c34d47",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7506f041-44b1-60f1-58b7-f39461430ac2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdc43cb2-5340-d1d4-135c-db29e33536dd",
  "kind": "theorem",
  "lexical_name": "reflectedL2_norm_sq_eq_integral",
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
  "slug": "reflectedl2-norm-sq-eq-integral--ee879c6c3b0ad3df45adbd1c",
  "source": {
    "blob": "4e43df4c20fb350feae75604083ad76504c34d47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee879c6c3b0ad3df45adbd1c204c0dfc637909a671b52a8cd3fc94203affcf86",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc43cb2-5340-d1d4-135c-db29e33536dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedL2_norm_sq_eq_integral {A : ℝ} (hA : 0 < A)
    (s : Finset ℕ) (c : ℕ → ℝ) :
    ‖reflectedL2 A hA s c‖ ^ 2 = ∫ x : ℝ, (reflectedProfile A s c x) ^ 2 := by
  rw [← real_inner_self_eq_norm_sq, L2.inner_def]
  apply integral_congr_ae
  filter_upwards [(reflectedProfile_memLp hA s c).coeFn_toLp] with x hx
  change inner ℝ ((reflectedProfile_memLp hA s c).toLp _ x)
    ((reflectedProfile_memLp hA s c).toLp _ x) = _
  rw [hx, Real.inner_apply, pow_two]

/-- Exact real `L²` polarization retains the two actual states and their signed surplus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/21SourceHankelReflection/Variant9ed13c361d12afa384bec3fea33dbd27581d6f15ac9aff9ec7f84f664cf606bf.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e43df4c20fb350feae75604083ad76504c34d47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
