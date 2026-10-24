# of_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3608970-eb43-c48f-a212-ab6e0f2fb3b5",
  "kind": "theorem",
  "lexical_name": "of_smul",
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
  "slug": "of-smul--b204147a5d5e7ede9f6f279a",
  "source": {
    "blob": "47006b07cbee8d38f05dfd040e1fbcdcccabf3f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 188,
    "path": "GRWTSK/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b204147a5d5e7ede9f6f279a357c55ccdde9a6ac3646f2e2a3e46921f7c1fbd4",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3608970-eb43-c48f-a212-ab6e0f2fb3b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_smul {y : R} (hy : y ∈ nonZeroDivisors R)
    (h : IsAlgebraic R (y • z)) : IsAlgebraic R z :=
  have ⟨p, hp, eval0⟩ := h
  ⟨_, mt (comp_C_mul_X_eq_zero_iff hy).mp hp, by simpa [aeval_comp, Algebra.smul_def] using eval0⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant59052903b6654a3299d692015f6fa479fcf40bab5fb6df9235a3e6dc731181c4.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47006b07cbee8d38f05dfd040e1fbcdcccabf3f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
