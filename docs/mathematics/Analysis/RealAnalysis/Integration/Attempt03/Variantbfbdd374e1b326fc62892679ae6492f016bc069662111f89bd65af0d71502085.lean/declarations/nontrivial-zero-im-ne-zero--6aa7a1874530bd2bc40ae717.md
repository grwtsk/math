# nontrivial_zero_im_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:50fc501d-7ce6-c932-3f05-63a2775a0118",
  "kind": "theorem",
  "lexical_name": "nontrivial_zero_im_ne_zero",
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
  "slug": "nontrivial-zero-im-ne-zero--6aa7a1874530bd2bc40ae717",
  "source": {
    "blob": "0ad4bf4ea93788462f9cacb62725e12797a81933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aa7a1874530bd2bc40ae717c04466b5fe6141b50d2a4ba178c27ad723382f76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50fc501d-7ce6-c932-3f05-63a2775a0118`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_zero_im_ne_zero {ρ : ℂ} (hρ : NontrivialZetaZero ρ) : ρ.im ≠ 0 := by
  intro him
  have hr : ρ = (ρ.re : ℂ) := by apply Complex.ext <;> simp [him]
  have hn := riemannZeta_ofReal_neg hρ.mem_critical_strip.1 hρ.mem_critical_strip.2
  rw [← hr, hρ.1] at hn
  norm_num at hn

end
end ContinuousResearch.ActualRealZetaSign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad4bf4ea93788462f9cacb62725e12797a81933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
