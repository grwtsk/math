# lift_assemble

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47b4908c-f67a-f5df-b443-aaa1e017890f",
  "kind": "theorem",
  "lexical_name": "lift_assemble",
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
  "slug": "lift-assemble--651029dab15788c0bc563b98",
  "source": {
    "blob": "34cfb3133fcea2444cd167239a9ee89fff9f888b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:651029dab15788c0bc563b982c831a4dbd2a6ad9a97787c82fab399368dae96e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47b4908c-f67a-f5df-b443-aaa1e017890f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_assemble (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (u v : stage a b k) :
    complexLift a b l hl k (assemble a b k u v) =
      assemble a b k (stageEquiv a b l hl k u) (stageEquiv a b l hl k v) := by
  simp only [assemble, map_add, map_smul, ← embed_lift]

/-- Both parts commute with the SAME real-source weighted map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexRealization.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34cfb3133fcea2444cd167239a9ee89fff9f888b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
