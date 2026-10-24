# adjMatrix_pow_mod_p_of_regular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92585ed4-521b-e556-4039-5a9ff2f671bf",
  "kind": "theorem",
  "lexical_name": "adjMatrix_pow_mod_p_of_regular",
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
  "slug": "adjmatrix-pow-mod-p-of-regular--8f9e87020e943b99d156553b",
  "source": {
    "blob": "baa781c85fcefc058bf9cc49da7de0ceb0fb817e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 232,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f9e87020e943b99d156553be100de04e6ee817fff39d8c72fb37780e451054b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92585ed4-521b-e556-4039-5a9ff2f671bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjMatrix_pow_mod_p_of_regular {p : ℕ} (dmod : (d : ZMod p) = 1)
    (hd : G.IsRegularOfDegree d) {k : ℕ} (hk : 2 ≤ k) :
    G.adjMatrix (ZMod p) ^ k = of (fun _ _ => 1) := by
  match k with
  | 0 | 1 => exfalso; linarith
  | k + 2 =>
    induction' k with k hind
    · exact adjMatrix_sq_mod_p_of_regular hG dmod hd
    rw [pow_succ', hind (Nat.le_add_left 2 k)]
    exact adjMatrix_mul_const_one_mod_p_of_regular dmod hd

variable [Nonempty V]

open scoped Classical in
include hG in
/-- This is the main proof. Assuming that `3 ≤ d`, we take `p` to be a prime factor of `d-1`.
  Then the `p`th power of the adjacency matrix of a `d`-regular friendship graph must have trace 1
  mod `p`, but we can also show that the trace must be the `p`th power of the trace of the original
  adjacency matrix, which is 0, a contradiction.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FriendshipGraphs/Variant9201ca9c98238b3391a1cd8ccadd251c141ec2cad300588eddb89d3fb1a5d157.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baa781c85fcefc058bf9cc49da7de0ceb0fb817e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
