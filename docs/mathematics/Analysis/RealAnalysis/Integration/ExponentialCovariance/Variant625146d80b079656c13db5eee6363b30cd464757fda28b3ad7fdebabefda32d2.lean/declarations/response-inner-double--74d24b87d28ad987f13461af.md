# response_inner_double

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa649b45adba9f8d16c4f763ab2c27b6fb6e1a90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf7a88a2-7b89-45b9-8353-33e4845d1acb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6349c867-3c94-aed3-9df7-6cabe6c7d453",
  "kind": "theorem",
  "lexical_name": "response_inner_double",
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
  "slug": "response-inner-double--74d24b87d28ad987f13461af",
  "source": {
    "blob": "aa649b45adba9f8d16c4f763ab2c27b6fb6e1a90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74d24b87d28ad987f13461aff5fece4ba8fa1150b9a7b4b457782506a5269ca2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6349c867-3c94-aed3-9df7-6cabe6c7d453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_inner_double (a b : ℝ) (ha : 0 < a) (hb : 0 < b) :
    inner ℂ (response a ha) (response b hb) =
      ((∫ u : ℝ in Ioi 0, ∫ v : ℝ in Ioi 0, gramIntegrand a b (u, v)) : ℝ) := by
  rw [response_inner_full_double]
  congr 1
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun u hu => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos u (le_of_not_gt hu),
        zero_mul, integral_zero])]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro u hu
  exact (setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun v hv => by
      simp only [gramIntegrand, fixedKernel_zero_of_nonpos v (le_of_not_gt hv),
        mul_zero, zero_mul])).symm

end
end ExponentialCovarianceScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ExponentialCovariance/Variant625146d80b079656c13db5eee6363b30cd464757fda28b3ad7fdebabefda32d2.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa649b45adba9f8d16c4f763ab2c27b6fb6e1a90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
