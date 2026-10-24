# cyclicSubgroup_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b469e72f-8929-e43e-0171-c25f7fdb9512",
  "kind": "theorem",
  "lexical_name": "cyclicSubgroup_le_iff",
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
  "slug": "cyclicsubgroup-le-iff--85be154b46bf19d344380c58",
  "source": {
    "blob": "488e6006e33deb20ef2f3e4cdc545455e24f57a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 55,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85be154b46bf19d344380c58f029ac9b2e74e6eeb57f404d222f743ee6a213b5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b469e72f-8929-e43e-0171-c25f7fdb9512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicSubgroup_le_iff (d e : Divisor M) :
    cyclicSubgroup d ≤ cyclicSubgroup e ↔ d ≤ e := by
  constructor
  · intro h
    have hg : ((M / (d : ℕ) : ℕ) : ZMod M) ∈ cyclicSubgroup d := by
      rw [mem_cyclicSubgroup, generator_order]
    simpa only [mem_cyclicSubgroup, generator_order, Divisor.le_iff] using h hg
  · intro h x hx
    exact (mem_cyclicSubgroup e x).mpr (((mem_cyclicSubgroup d x).mp hx).trans h)

/-- Every subgroup occurs; this is a full representation, not an embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `488e6006e33deb20ef2f3e4cdc545455e24f57a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
