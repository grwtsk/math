# SatisfiesMomentCumulantRelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0d429dded67e89f5b4e8127a797f141d0c0e37081464143f20b553f153d3f2e",
  "kind": "def",
  "lexical_name": "SatisfiesMomentCumulantRelation",
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
  "slug": "satisfiesmomentcumulantrelation--1bba1d9dab4d9061854b7a09",
  "source": {
    "blob": "b1e37471f094dcd8413ff59986e150191047123a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 243,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bba1d9dab4d9061854b7a0918782ecf471fcb7a2a7967437ee58336acece348",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0d429dded67e89f5b4e8127a797f141d0c0e37081464143f20b553f153d3f2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SatisfiesMomentCumulantRelation
    (n : ℕ)
    (moment : R)
    (κ : Finset (Fin n) → R) : Prop :=
  partitionMoment n κ = moment

/-- A moment-cumulant relation is equivalent to the recursive one-block
isolation formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MomentCumulantPartitions/Variant68500435bd7dea58e8e5c73d338b716d7efd2e9d70681d34029af24fc8588771.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1e37471f094dcd8413ff59986e150191047123a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
