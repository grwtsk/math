# ofReal_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:882b2046-4d41-a543-d0b0-b06ff98a16fb",
  "kind": "theorem",
  "lexical_name": "ofReal_average",
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
  "slug": "ofreal-average--34c43033bbfec0c864b8f6b9",
  "source": {
    "blob": "0087a783d7a30e26af5c121caa5aba6a0024dbb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 460,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c43033bbfec0c864b8f6b9c3f1a32ebdad376f82c87a69e611467113c1ad20",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:882b2046-4d41-a543-d0b0-b06ff98a16fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 460–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofReal_average {f : α → ℝ} (hf : Integrable f μ) (hf₀ : 0 ≤ᵐ[μ] f) :
    ENNReal.ofReal (⨍ x, f x ∂μ) = (∫⁻ x, ENNReal.ofReal (f x) ∂μ) / μ univ := by
  obtain rfl | hμ := eq_or_ne μ 0
  · simp
  · rw [average_eq, smul_eq_mul, measureReal_def, ← toReal_inv, ofReal_mul toReal_nonneg,
      ofReal_toReal (inv_ne_top.2 <| measure_univ_ne_zero.2 hμ),
      ofReal_integral_eq_lintegral_ofReal hf hf₀, ENNReal.div_eq_inv_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean#L460).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0087a783d7a30e26af5c121caa5aba6a0024dbb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
