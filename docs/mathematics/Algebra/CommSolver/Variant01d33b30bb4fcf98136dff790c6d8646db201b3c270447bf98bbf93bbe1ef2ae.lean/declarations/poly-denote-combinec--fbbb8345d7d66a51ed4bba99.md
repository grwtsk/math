# Poly.denote_combineC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7b602a0-a5f8-6992-763b-7781a2e74285",
  "kind": "theorem",
  "lexical_name": "Poly.denote_combineC",
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
  "slug": "poly-denote-combinec--fbbb8345d7d66a51ed4bba99",
  "source": {
    "blob": "aa65ef7349ca6f9f09250eab10dd531b09978f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1461,
    "line": 1448,
    "path": "GRWTSK/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbbb8345d7d66a51ed4bba99907a074bf5e01f46fff18b9f6678bbe0390f9c5b",
  "verification": {
    "reference": "docs/verification/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b602a0-a5f8-6992-763b-7781a2e74285`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1448–1461.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denote_combineC {α c} [Ring α] [IsCharP α c] (ctx : Context α) (p₁ p₂ : Poly)
    : (combineC p₁ p₂ c).denote ctx = p₁.denote ctx + p₂.denote ctx := by
  fun_induction combineC
    <;> simp [*, denote_addConstC, denote, intCast_add, add_comm, add_left_comm, add_assoc,
      IsCharP.intCast_emod, zsmul_eq_intCast_mul]
  next hg _ h _ =>
    simp +zetaDelta at h
    rw [← add_assoc, Mon.eq_of_grevlex hg, ← right_distrib, ← intCast_add,
      ← IsCharP.intCast_emod (p := c),
      h, intCast_zero, zero_mul, zero_add]
  next hg _ h _ =>
    simp +zetaDelta only [IsCharP.intCast_emod, intCast_add]
    rw [right_distrib, Mon.eq_of_grevlex hg, add_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean#L1448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa65ef7349ca6f9f09250eab10dd531b09978f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
