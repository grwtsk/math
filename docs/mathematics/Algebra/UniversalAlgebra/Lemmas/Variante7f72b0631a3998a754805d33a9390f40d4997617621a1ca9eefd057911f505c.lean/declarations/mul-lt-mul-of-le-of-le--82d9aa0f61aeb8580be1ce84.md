# mul_lt_mul_of_le_of_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43b0feca-3c8c-d986-9c4d-690c1c96960d",
  "kind": "theorem",
  "lexical_name": "mul_lt_mul_of_le_of_le'",
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
  "slug": "mul-lt-mul-of-le-of-le--82d9aa0f61aeb8580be1ce84",
  "source": {
    "blob": "3375d2c9053676133890d003c030ae10b67a3b57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 231,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82d9aa0f61aeb8580be1ce8436f0b27c324888d9f15abe024c5351f28ca27cd4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43b0feca-3c8c-d986-9c4d-690c1c96960d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_lt_mul_of_le_of_le' [PosMulStrictMono α] [MulPosMono α] (h₁ : a ≤ b) (h₂ : c < d)
    (b0 : 0 < b) (c0 : 0 ≤ c) : a * c < b * d :=
  (mul_le_mul_of_nonneg_right h₁ c0).trans_lt (mul_lt_mul_of_pos_left h₂ b0)
#align mul_lt_mul_of_le_of_le' mul_lt_mul_of_le_of_le'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Lemmas/Variante7f72b0631a3998a754805d33a9390f40d4997617621a1ca9eefd057911f505c.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3375d2c9053676133890d003c030ae10b67a3b57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
