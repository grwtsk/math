# Filter.Tendsto.neg_mul_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61fe7b58-5627-79e5-680e-4ab2accd6070",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.neg_mul_atBot",
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
  "slug": "filter-tendsto-neg-mul-atbot--6387d50b6d09d94e45a3aed2",
  "source": {
    "blob": "84fa01ad85c726c6f31d1dbc4e08e1f8efb42bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 123,
    "path": "GRWTSK/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6387d50b6d09d94e45a3aed22786a8ca881edc47fbda29e385fdeee8e1cdf016",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61fe7b58-5627-79e5-680e-4ab2accd6070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.Tendsto.neg_mul_atBot {C : 𝕜} (hC : C < 0) (hf : Tendsto f l (𝓝 C))
    (hg : Tendsto g l atBot) : Tendsto (fun x => f x * g x) l atTop := by
  simpa only [mul_comm] using hg.atBot_mul_neg hC hf
#align filter.tendsto.neg_mul_at_bot Filter.Tendsto.neg_mul_atBot

/-- The function `x ↦ x⁻¹` tends to `+∞` on the right of `0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Field/Variant785108c6ef51b3e7c5c874668f3630c22e2027910ae67154d4f659ca994d6a0b.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84fa01ad85c726c6f31d1dbc4e08e1f8efb42bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
