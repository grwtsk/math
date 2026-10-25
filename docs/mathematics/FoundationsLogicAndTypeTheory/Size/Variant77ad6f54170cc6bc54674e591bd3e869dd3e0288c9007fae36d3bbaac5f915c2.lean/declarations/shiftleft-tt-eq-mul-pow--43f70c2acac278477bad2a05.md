# shiftLeft'_tt_eq_mul_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92d17c9e-0bd9-5a18-fd91-7246f45b3f9b",
  "kind": "theorem",
  "lexical_name": "shiftLeft'_tt_eq_mul_pow",
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
  "slug": "shiftleft-tt-eq-mul-pow--43f70c2acac278477bad2a05",
  "source": {
    "blob": "d7a36b8968df4f54fe4950ec30eac895e3beb4cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43f70c2acac278477bad2a054d02428c45f594aa2c58663ce2d0efe12f12fbcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92d17c9e-0bd9-5a18-fd91-7246f45b3f9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftLeft'_tt_eq_mul_pow (m) : ∀ n, shiftLeft' true m n + 1 = (m + 1) * 2 ^ n
  | 0 => by simp [shiftLeft', pow_zero, Nat.one_mul]
  | k + 1 => by
    change bit1 (shiftLeft' true m k) + 1 = (m + 1) * (2 ^ k * 2)
    rw [bit1_val]
    change 2 * (shiftLeft' true m k + 1) = _
    rw [shiftLeft'_tt_eq_mul_pow m k, mul_left_comm, mul_comm 2]
#align nat.shiftl'_tt_eq_mul_pow Nat.shiftLeft'_tt_eq_mul_pow

end

#align nat.one_shiftl Nat.one_shiftLeft

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7a36b8968df4f54fe4950ec30eac895e3beb4cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
