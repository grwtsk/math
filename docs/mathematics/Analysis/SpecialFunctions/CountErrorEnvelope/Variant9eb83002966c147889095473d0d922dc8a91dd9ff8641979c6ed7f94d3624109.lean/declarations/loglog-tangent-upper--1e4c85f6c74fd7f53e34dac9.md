# loglog_tangent_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ae7ae43-e9e8-f63a-ac96-26e904ac3a2a",
  "kind": "theorem",
  "lexical_name": "loglog_tangent_upper",
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
  "slug": "loglog-tangent-upper--1e4c85f6c74fd7f53e34dac9",
  "source": {
    "blob": "3b4165b2d578e4c845e68b3be5d9b46cc8efc9d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 24,
    "path": "GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e4c85f6c74fd7f53e34dac9d062ce2fc1651edbc89a23ded5681c2a3a0299f3",
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

Occurrence: `result:5ae7ae43-e9e8-f63a-ac96-26e904ac3a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem loglog_tangent_upper (T t : ℝ) (hT : 1 < T) (ht : T ≤ t) :
    Real.log (Real.log t) ≤ Real.log (Real.log T) +
      (Real.log t - Real.log T)/Real.log T := by
  have hTp : 0 < T := by linarith
  have htp : 0 < t := hTp.trans_le ht
  have hLT : 0 < Real.log T := Real.log_pos hT
  have hLt : 0 < Real.log t := hLT.trans_le (Real.log_le_log hTp ht)
  have he := Real.log_le_sub_one_of_pos (div_pos hLt hLT)
  rw [Real.log_div hLt.ne' hLT.ne'] at he
  have hd : (Real.log t - Real.log T)/Real.log T =
      Real.log t/Real.log T - 1 := by
    field_simp
  rw [hd]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant9eb83002966c147889095473d0d922dc8a91dd9ff8641979c6ed7f94d3624109.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b4165b2d578e4c845e68b3be5d9b46cc8efc9d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
