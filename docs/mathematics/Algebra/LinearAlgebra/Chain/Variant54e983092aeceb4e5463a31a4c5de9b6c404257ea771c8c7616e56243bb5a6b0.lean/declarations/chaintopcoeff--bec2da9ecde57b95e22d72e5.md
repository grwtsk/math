# chainTopCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c744964715782429abd9834165a02a430eb2eb66e497dc07c0d596c4f6f6494f",
  "kind": "def",
  "lexical_name": "chainTopCoeff",
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
  "slug": "chaintopcoeff--bec2da9ecde57b95e22d72e5",
  "source": {
    "blob": "3fc58bb502930835c633147e29541e0886c1ed48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 260,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bec2da9ecde57b95e22d72e5ebf871f8aafcf2ff32671588b7ba99fc8bf255cf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c744964715782429abd9834165a02a430eb2eb66e497dc07c0d596c4f6f6494f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chainTopCoeff : ℕ :=
  letI := Classical.propDecidable
  if hα : α = 0 then 0 else
  Nat.pred <| Nat.find (show ∃ n, genWeightSpace M (n • α + β : L → R) = ⊥ from
    (eventually_genWeightSpace_smul_add_eq_bot M α β hα).exists)

/-- This is the largest `n : ℕ` such that `-i • α + β` is a weight for all `0 ≤ i ≤ n`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variant54e983092aeceb4e5463a31a4c5de9b6c404257ea771c8c7616e56243bb5a6b0.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc58bb502930835c633147e29541e0886c1ed48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
