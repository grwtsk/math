# sq_mul_squarefree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac98aa48-b1e7-05e2-7ae0-6859c96a3368",
  "kind": "theorem",
  "lexical_name": "sq_mul_squarefree",
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
  "slug": "sq-mul-squarefree--6828ef091f43529d4d01a728",
  "source": {
    "blob": "fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 372,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6828ef091f43529d4d01a728c28ad6ea3f8722658891285429e048d62ff3e082",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac98aa48-b1e7-05e2-7ae0-6859c96a3368`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_mul_squarefree (n : ℕ) : ∃ a b : ℕ, b ^ 2 * a = n ∧ Squarefree a := by
  cases' n with n
  · exact ⟨1, 0, by simp, squarefree_one⟩
  · obtain ⟨a, b, -, -, h₁, h₂⟩ := sq_mul_squarefree_of_pos (succ_pos n)
    exact ⟨a, b, h₁, h₂⟩
#align nat.sq_mul_squarefree Nat.sq_mul_squarefree

/-- `squarefree` is multiplicative. Note that the → direction does not require `hmn`
and generalizes to arbitrary commutative monoids. See `squarefree.of_mul_left` and
`squarefree.of_mul_right` above for auxiliary lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
