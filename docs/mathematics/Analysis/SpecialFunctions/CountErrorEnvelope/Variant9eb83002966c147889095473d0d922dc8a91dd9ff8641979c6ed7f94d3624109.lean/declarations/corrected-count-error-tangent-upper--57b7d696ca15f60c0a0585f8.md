# corrected_count_error_tangent_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e9b59ea-f344-13c3-c29a-fbfdf66503d0",
  "kind": "theorem",
  "lexical_name": "corrected_count_error_tangent_upper",
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
  "slug": "corrected-count-error-tangent-upper--57b7d696ca15f60c0a0585f8",
  "source": {
    "blob": "3b4165b2d578e4c845e68b3be5d9b46cc8efc9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 39,
    "path": "GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b7d696ca15f60c0a0585f833ca9f9de1326da4387958eeb53e235e42989606",
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

Occurrence: `result:5e9b59ea-f344-13c3-c29a-fbfdf66503d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_count_error_tangent_upper (T t : ℝ) (hT : 1 < T) (ht : T ≤ t) :
    correctedBellottiWongError t ≤ correctedBellottiWongError T +
      ((11200/100000 : ℝ) + (12567/100000 : ℝ)/Real.log T) * Real.log (t/T) := by
  have hTp : 0 < T := by linarith
  have htp : 0 < t := hTp.trans_le ht
  have he := mul_le_mul_of_nonneg_left (loglog_tangent_upper T t hT ht)
    (by norm_num : (0 : ℝ) ≤ 12567/100000)
  calc
    correctedBellottiWongError t ≤
        (11200/100000 : ℝ)*Real.log t +
          (12567/100000 : ℝ)*(Real.log (Real.log T) +
            (Real.log t-Real.log T)/Real.log T) + (377417/100000 : ℝ) := by
      unfold correctedBellottiWongError
      linarith
    _ = correctedBellottiWongError T +
        ((11200/100000 : ℝ)+(12567/100000 : ℝ)/Real.log T)*Real.log (t/T) := by
      rw [Real.log_div htp.ne' hTp.ne']
      unfold correctedBellottiWongError
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b4165b2d578e4c845e68b3be5d9b46cc8efc9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
