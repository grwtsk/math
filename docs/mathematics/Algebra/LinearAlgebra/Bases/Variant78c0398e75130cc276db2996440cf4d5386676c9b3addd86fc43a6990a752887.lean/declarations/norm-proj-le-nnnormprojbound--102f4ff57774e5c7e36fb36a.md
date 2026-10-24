# norm_proj_le_nnnormProjBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:535337bb-1b63-5d3b-2462-160a7b3bf496",
  "kind": "theorem",
  "lexical_name": "norm_proj_le_nnnormProjBound",
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
  "slug": "norm-proj-le-nnnormprojbound--102f4ff57774e5c7e36fb36a",
  "source": {
    "blob": "323c9f608ea14a9ee0005e29eb9b6458315b240f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 362,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:102f4ff57774e5c7e36fb36ad119a6f84a8edbc3eb323917b9034b793ca886cd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:535337bb-1b63-5d3b-2462-160a7b3bf496`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_proj_le_nnnormProjBound [CompleteSpace X] (n : ℕ) :
    ‖b.proj n‖ ≤ b.nnnormProjBound :=
  mod_cast b.nnnorm_proj_le_nnnormProjBound n

/-!
### Construction of Schauder basis

We explain how to construct a Schauder basis from a sequence `P n` of projections
satisfying `P n ∘ P m = P (min n m)`, converging to the identity pointwise, and such that each
`P (n+1) - P n` has rank one. The idea is to define the basis vectors as
`e n = (P (n+1) - P n) x` for some `x` such that this is non-zero, and then
show that these vectors form a Schauder basis. -/

/-- The difference operator `P (n + 1) - P n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant78c0398e75130cc276db2996440cf4d5386676c9b3addd86fc43a6990a752887.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `323c9f608ea14a9ee0005e29eb9b6458315b240f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
