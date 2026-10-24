# integral_sq_mul_sq_le_of_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9776201c0bb8454ae8f607c7f90145cf34db5a53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 562,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f17a53df-61fb-6099-d6f3-a7a915eda3a9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:208b2d0d-0ad2-e366-81b6-9730fe955b20",
  "kind": "theorem",
  "lexical_name": "integral_sq_mul_sq_le_of_bounds",
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
  "slug": "integral-sq-mul-sq-le-of-bounds--2f0037ec428712804a24ba09",
  "source": {
    "blob": "9776201c0bb8454ae8f607c7f90145cf34db5a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 573,
    "line": 562,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f0037ec428712804a24ba09228cab0605f588152a01346d9d717ae3a2baa44f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:208b2d0d-0ad2-e366-81b6-9730fe955b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–573.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_sq_mul_sq_le_of_bounds {F : ℝ → ℝ} {C : ℝ}
    (hC : 0 ≤ C) (h1 : ∀ r, |F r| * |r| ≤ 2) (h2 : ∀ r, |F r| * r ^ 2 ≤ C) :
    ∫ r, F r ^ 2 * r ^ 2 ≤ 8 + 2 * C ^ 2 := by
  rw [← integral_momMaj C]
  exact integral_mono_of_nonneg (Eventually.of_forall fun r => by positivity)
    (momMaj_integrable C) (Eventually.of_forall fun r => sq_mul_sq_le_momMaj hC h1 h2 r)


end PsiC
end Zeta23

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9776201c0bb8454ae8f607c7f90145cf34db5a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
