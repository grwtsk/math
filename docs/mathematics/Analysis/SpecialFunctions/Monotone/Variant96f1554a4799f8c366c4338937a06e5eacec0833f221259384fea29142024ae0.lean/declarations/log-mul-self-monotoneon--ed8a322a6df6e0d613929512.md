# log_mul_self_monotoneOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e8b99a8-e963-b874-650e-dde6970d4136",
  "kind": "theorem",
  "lexical_name": "log_mul_self_monotoneOn",
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
  "slug": "log-mul-self-monotoneon--ed8a322a6df6e0d613929512",
  "source": {
    "blob": "28c2fee670b81c2d4a328ec89d339144e3bf2e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 40,
    "path": "GRWTSK/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed8a322a6df6e0d6139295124e9d762bd03e2c472ec4d96d484a28af5cbc0bac",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e8b99a8-e963-b874-650e-dde6970d4136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_mul_self_monotoneOn : MonotoneOn (fun x : ℝ => log x * x) { x | 1 ≤ x } := by
  -- TODO: can be strengthened to exp (-1) ≤ x
  simp only [MonotoneOn, mem_setOf_eq]
  intro x hex y hey hxy
  have x_pos : 0 < x := lt_of_lt_of_le zero_lt_one hex
  have y_pos : 0 < y := lt_of_lt_of_le zero_lt_one hey
  refine' mul_le_mul ((log_le_log x_pos y_pos).mpr hxy) hxy (le_of_lt x_pos) _
  rwa [le_log_iff_exp_le y_pos, Real.exp_zero]
#align real.log_mul_self_monotone_on Real.log_mul_self_monotoneOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Monotone/Variant96f1554a4799f8c366c4338937a06e5eacec0833f221259384fea29142024ae0.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c2fee670b81c2d4a328ec89d339144e3bf2e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
