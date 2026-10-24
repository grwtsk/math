# exact_binomial_multiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3b92a377-cadb-c959-f9c0-b15f62035a58",
  "kind": "theorem",
  "lexical_name": "exact_binomial_multiplier",
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
  "slug": "exact-binomial-multiplier--179afbc2bc7c86e6b572da64",
  "source": {
    "blob": "ec95f96ab13881c57dc244db2c67593cf9692680",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 36,
    "path": "GRWTSK/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:179afbc2bc7c86e6b572da642960a56c95222b1d6395b6d84439cb7c61a31518",
  "verification": {
    "reference": "docs/verification/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b92a377-cadb-c959-f9c0-b15f62035a58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_binomial_multiplier (k : ℕ) (h : ℝ) (s : ℂ) :
    multiplier k h s = (Complex.exp ((h : ℂ) * s) - 1) ^ k := by
  rw [sub_eq_add_neg, add_pow]
  unfold multiplier
  apply Finset.sum_congr rfl
  intro j _hj
  have he : Complex.exp ((j : ℂ) * (h : ℂ) * s) =
      Complex.exp ((h : ℂ) * s) ^ j := by
    rw [mul_assoc, Complex.exp_nat_mul]
  rw [he]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FixedTranslationFilter/Variant4b72b45adc480a0a6b72f43466af652a941600f10b4363190fe6c51334d86385.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec95f96ab13881c57dc244db2c67593cf9692680` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
