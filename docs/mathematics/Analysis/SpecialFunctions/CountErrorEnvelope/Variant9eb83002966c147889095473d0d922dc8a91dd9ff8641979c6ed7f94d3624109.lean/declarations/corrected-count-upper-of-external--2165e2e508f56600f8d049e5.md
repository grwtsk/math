# corrected_count_upper_of_external

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7be54258-4a81-d552-125e-3531fc7c444e",
  "kind": "theorem",
  "lexical_name": "corrected_count_upper_of_external",
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
  "slug": "corrected-count-upper-of-external--2165e2e508f56600f8d049e5",
  "source": {
    "blob": "3b4165b2d578e4c845e68b3be5d9b46cc8efc9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 59,
    "path": "GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2165e2e508f56600f8d049e53ab0065b749df9f29246437f1570e3a681188c06",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7be54258-4a81-d552-125e-3531fc7c444e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_count_upper_of_external (hBW : CorrectedBellottiWongCount)
    (T t : ℝ) (hT : Real.exp 1 ≤ T) (ht : T ≤ t) :
    actualPositiveZeroCount t ≤ zeroCountMain t + correctedBellottiWongError T +
      ((11200/100000 : ℝ) + (12567/100000 : ℝ)/Real.log T)*Real.log (t/T) := by
  have h1 : 1 < T := (Real.one_lt_exp_iff.mpr (by norm_num : (0 : ℝ) < 1)).trans_le hT
  have hc := (le_abs_self (actualPositiveZeroCount t-zeroCountMain t)).trans (hBW t (hT.trans ht))
  have he := corrected_count_error_tangent_upper T t h1 ht
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b4165b2d578e4c845e68b3be5d9b46cc8efc9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
