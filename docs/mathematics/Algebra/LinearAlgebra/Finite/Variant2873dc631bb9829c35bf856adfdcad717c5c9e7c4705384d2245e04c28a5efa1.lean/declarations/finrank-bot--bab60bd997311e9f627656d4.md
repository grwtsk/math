# finrank_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3487c0a4-f709-e57f-dba4-56b35224cea2",
  "kind": "theorem",
  "lexical_name": "finrank_bot",
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
  "slug": "finrank-bot--bab60bd997311e9f627656d4",
  "source": {
    "blob": "36d19356ce3d37bd9d45892787bf79b386df16a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 380,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bab60bd997311e9f627656d475141d932532ceff878db1f9c8172901b24d2608",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3487c0a4-f709-e57f-dba4-56b35224cea2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_bot : finrank R (⊥ : Submodule R M) = 0 :=
  finrank_eq_of_rank_eq (rank_bot _ _)

end

section StrongRankCondition

variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]
variable [StrongRankCondition R] [Module.Finite R M]

/-- A finite rank torsion-free module has positive `finrank` iff it has a nonzero element. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finite/Variant2873dc631bb9829c35bf856adfdcad717c5c9e7c4705384d2245e04c28a5efa1.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36d19356ce3d37bd9d45892787bf79b386df16a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
