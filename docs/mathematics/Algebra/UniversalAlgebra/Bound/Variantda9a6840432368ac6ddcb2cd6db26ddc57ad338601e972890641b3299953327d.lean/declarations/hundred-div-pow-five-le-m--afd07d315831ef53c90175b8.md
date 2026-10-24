# hundred_div_ε_pow_five_le_m

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b17cd8d7-17d3-3bff-8671-bed1a4235e1b",
  "kind": "theorem",
  "lexical_name": "hundred_div_ε_pow_five_le_m",
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
  "slug": "hundred-div-pow-five-le-m--afd07d315831ef53c90175b8",
  "source": {
    "blob": "4332d6ba099c16cabeb3bd96a8a641be0381df80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afd07d315831ef53c90175b83f765368519892a2e4437563420b105c1e793235",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b17cd8d7-17d3-3bff-8671-bed1a4235e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hundred_div_ε_pow_five_le_m [Nonempty α] (hPα : #P.parts * 16 ^ #P.parts ≤ card α)
    (hPε : 100 ≤ (4 : ℝ) ^ #P.parts * ε ^ 5) : 100 / ε ^ 5 ≤ m :=
  (div_le_of_le_mul₀ (eps_pow_five_pos hPε).le (by positivity) hPε).trans <| by
    norm_cast
    rwa [Nat.le_div_iff_mul_le (stepBound_pos (P.parts_nonempty <|
      univ_nonempty.ne_empty).card_pos), stepBound, mul_left_comm, ← mul_pow]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Bound/Variantda9a6840432368ac6ddcb2cd6db26ddc57ad338601e972890641b3299953327d.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4332d6ba099c16cabeb3bd96a8a641be0381df80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
