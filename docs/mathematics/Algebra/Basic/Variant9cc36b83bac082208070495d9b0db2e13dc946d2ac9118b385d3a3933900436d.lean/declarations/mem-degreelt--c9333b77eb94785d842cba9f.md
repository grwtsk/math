# mem_degreeLT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23667de9-d417-4b56-42cf-a77976d46831",
  "kind": "theorem",
  "lexical_name": "mem_degreeLT",
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
  "slug": "mem-degreelt--c9333b77eb94785d842cba9f",
  "source": {
    "blob": "c29e1314ab11ac4476d2cf5e3a25b5f3b8ac0289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 104,
    "path": "GRWTSK/Algebra/Basic/Variant9cc36b83bac082208070495d9b0db2e13dc946d2ac9118b385d3a3933900436d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9333b77eb94785d842cba9f676081bc9577077d75526447b632153b2f8439ae",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9cc36b83bac082208070495d9b0db2e13dc946d2ac9118b385d3a3933900436d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23667de9-d417-4b56-42cf-a77976d46831`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_degreeLT {n : ℕ} {f : R[X]} : f ∈ degreeLT R n ↔ degree f < n := by
  rw [degreeLT, Submodule.mem_iInf]
  conv_lhs => intro i; rw [Submodule.mem_iInf]
  rw [degree, Finset.max_eq_sup_coe]
  rw [Finset.sup_lt_iff ?_]
  rotate_left
  apply WithBot.bot_lt_coe
  conv_rhs =>
    simp only [mem_support_iff]
    intro b
    rw [Nat.cast_withBot, WithBot.coe_lt_coe, lt_iff_not_le, Ne, not_imp_not]
#align polynomial.mem_degree_lt Polynomial.mem_degreeLT

@[mono]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9cc36b83bac082208070495d9b0db2e13dc946d2ac9118b385d3a3933900436d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9cc36b83bac082208070495d9b0db2e13dc946d2ac9118b385d3a3933900436d.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c29e1314ab11ac4476d2cf5e3a25b5f3b8ac0289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
