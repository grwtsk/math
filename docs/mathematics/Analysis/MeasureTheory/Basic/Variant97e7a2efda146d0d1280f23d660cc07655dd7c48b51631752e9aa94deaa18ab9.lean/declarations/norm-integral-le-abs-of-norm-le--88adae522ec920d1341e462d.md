# norm_integral_le_abs_of_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2504147e2230a26eb804b0898004d0186c4e36a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 753,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8d0098b-90b8-758c-aaa3-0f797044c9d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d616a4f7-ab23-359e-1f69-336120d77cfa",
  "kind": "theorem",
  "lexical_name": "norm_integral_le_abs_of_norm_le",
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
  "slug": "norm-integral-le-abs-of-norm-le--88adae522ec920d1341e462d",
  "source": {
    "blob": "2504147e2230a26eb804b0898004d0186c4e36a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 757,
    "line": 753,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88adae522ec920d1341e462d198ee5440a49c6fb757dcd0aa8828abd261ddaf6",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d616a4f7-ab23-359e-1f69-336120d77cfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integral_le_abs_of_norm_le {g : ℝ → ℝ} (h : ∀ᵐ t ∂μ.restrict <| Ι a b, ‖f t‖ ≤ g t)
    (hbound : IntervalIntegrable g μ a b) : ‖∫ t in a..b, f t ∂μ‖ ≤ |∫ t in a..b, g t ∂μ| := by
  rw [norm_intervalIntegral_eq, abs_intervalIntegral_eq]
  exact (norm_integral_le_of_norm_le hbound.def' h).trans (le_abs_self _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2504147e2230a26eb804b0898004d0186c4e36a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
