# liouville_liouvilleNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d262437-c0a2-e2f1-a6df-e634e60ada28",
  "kind": "theorem",
  "lexical_name": "liouville_liouvilleNumber",
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
  "slug": "liouville-liouvillenumber--2bf58946b161a3c966de6f30",
  "source": {
    "blob": "87444a5eefe5151ff32df6ad77db6e36d3b0a050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 180,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bf58946b161a3c966de6f308bc36310b2a67e1edc095ff60dd1db1a20016e75",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d262437-c0a2-e2f1-a6df-e634e60ada28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liouville_liouvilleNumber {m : ℕ} (hm : 2 ≤ m) : Liouville (liouvilleNumber m) := by
  -- two useful inequalities
  have mZ1 : 1 < (m : ℤ) := by norm_cast
  have m1 : 1 < (m : ℝ) := by norm_cast
  intro n
  -- the first `n` terms sum to `p / m ^ k!`
  rcases partialSum_eq_rat (zero_lt_two.trans_le hm) n with ⟨p, hp⟩
  refine ⟨p, m ^ n !, one_lt_pow₀ mZ1 n.factorial_ne_zero, ?_⟩
  push_cast
  rw [Nat.cast_pow] at hp
  -- separate out the sum of the first `n` terms and the rest
  rw [← partialSum_add_remainder m1 n, ← hp]
  have hpos := remainder_pos m1 n
  simpa [abs_of_pos hpos, hpos.ne'] using @remainder_lt n m (by assumption_mod_cast)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant32cabaa3f3644f5cd85f826516b0054d028f89baed8f2e34b4a66d63efe7ddf2.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87444a5eefe5151ff32df6ad77db6e36d3b0a050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
