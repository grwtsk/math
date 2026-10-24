# superpolynomialDecay_mul_param_pow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bc4f6d9-cb5e-97d5-b583-ed07686ada10",
  "kind": "theorem",
  "lexical_name": "superpolynomialDecay_mul_param_pow_iff",
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
  "slug": "superpolynomialdecay-mul-param-pow-iff--7a24f57820ed0cc95131acf2",
  "source": {
    "blob": "e63dcbbbee2e75a0b0371c6a4a75a198ce3a1b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 275,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a24f57820ed0cc95131acf2c560c259a0c906adfd87b322af3bd9626ded2aa8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bc4f6d9-cb5e-97d5-b583-ed07686ada10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem superpolynomialDecay_mul_param_pow_iff (hk : Tendsto k l atTop) (n : ℕ) :
    SuperpolynomialDecay l k (f * k ^ n) ↔ SuperpolynomialDecay l k f := by
  simpa [mul_comm f] using superpolynomialDecay_param_pow_mul_iff f hk n

variable {f}

end LinearOrderedField

section NormedLinearOrderedField

variable [NormedField β]
variable (l k f)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SuperpolynomialDecay/Variant9e0c9c4f80a5c69dc636434044e48f46714844f37467aad2df1daf6989aeda03.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e63dcbbbee2e75a0b0371c6a4a75a198ce3a1b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
