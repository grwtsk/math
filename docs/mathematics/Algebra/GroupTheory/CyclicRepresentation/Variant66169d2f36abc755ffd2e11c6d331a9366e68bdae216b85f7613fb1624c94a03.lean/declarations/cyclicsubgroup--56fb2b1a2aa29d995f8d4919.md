# cyclicSubgroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:914267525b0a96c3414733f5ca2e91b2e9654da32489e0801394fe7cfe6ab03d",
  "kind": "def",
  "lexical_name": "cyclicSubgroup",
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
  "slug": "cyclicsubgroup--56fb2b1a2aa29d995f8d4919",
  "source": {
    "blob": "488e6006e33deb20ef2f3e4cdc545455e24f57a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 19,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56fb2b1a2aa29d995f8d49191b435a3cea4e5c60ae770390bffd478642e832a9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:914267525b0a96c3414733f5ca2e91b2e9654da32489e0801394fe7cfe6ab03d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cyclicSubgroup (d : Divisor M) : AddSubgroup (ZMod M) where
  carrier := {x | (d : ℕ) • x = 0}
  zero_mem' := nsmul_zero _
  add_mem' := by intro x y hx hy; simp only [Set.mem_ofPred_eq] at *; simp [hx, hy]
  neg_mem' := by intro x hx; simp only [Set.mem_ofPred_eq] at *; simp [hx]

omit [NeZero M] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `488e6006e33deb20ef2f3e4cdc545455e24f57a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
