# Partition.PartsCardLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c4944b4aefb0fe8289119f32113a03ab53fa4ea2d30d465a1c137eee68fe246",
  "kind": "def",
  "lexical_name": "Partition.PartsCardLe",
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
  "slug": "partition-partscardle--15c8067de09c6381294ca76b",
  "source": {
    "blob": "f0e20a0f3bf589673f6a2ceb6b0838384796a0b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:15c8067de09c6381294ca76b13e35ab1ec1107b2dee7d6e3593a49f37e3cff2f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c4944b4aefb0fe8289119f32113a03ab53fa4ea2d30d465a1c137eee68fe246`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Partition.PartsCardLe {G : SimpleGraph V} (P : G.Partition) (n : ℕ) : Prop :=
  ∃ h : P.parts.Finite, h.toFinset.card ≤ n

/-- Whether a graph is `n`-partite, which is whether its vertex set
can be partitioned in at most `n` independent sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant2b5078e96eee6fd6b8043631f1a34e71382d1cc856c0587ee83276d1b33babae.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0e20a0f3bf589673f6a2ceb6b0838384796a0b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
