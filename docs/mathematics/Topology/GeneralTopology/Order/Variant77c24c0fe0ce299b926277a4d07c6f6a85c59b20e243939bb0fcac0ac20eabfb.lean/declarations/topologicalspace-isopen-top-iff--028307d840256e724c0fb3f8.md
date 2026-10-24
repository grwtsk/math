# TopologicalSpace.isOpen_top_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:889ffa8a-1a82-f432-4c37-3f13a7dc35bb",
  "kind": "theorem",
  "lexical_name": "TopologicalSpace.isOpen_top_iff",
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
  "slug": "topologicalspace-isopen-top-iff--028307d840256e724c0fb3f8",
  "source": {
    "blob": "f43df944e428b066958ebdfbf7babca6642b0d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 235,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variant77c24c0fe0ce299b926277a4d07c6f6a85c59b20e243939bb0fcac0ac20eabfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:028307d840256e724c0fb3f86970d9d0716e6dda3bd22c1a8af54505a77f2721",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variant77c24c0fe0ce299b926277a4d07c6f6a85c59b20e243939bb0fcac0ac20eabfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:889ffa8a-1a82-f432-4c37-3f13a7dc35bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem TopologicalSpace.isOpen_top_iff {α} (U : Set α) : IsOpen[⊤] U ↔ U = ∅ ∨ U = univ :=
  ⟨fun h => by
    induction h with
    | basic _ h => exact False.elim h
    | univ => exact .inr rfl
    | inter _ _ _ _ h₁ h₂ =>
      rcases h₁ with (rfl | rfl) <;> rcases h₂ with (rfl | rfl) <;> simp
    | sUnion _ _ ih => exact sUnion_mem_empty_univ ih, by
      rintro (rfl | rfl)
      exacts [@isOpen_empty _ ⊤, @isOpen_univ _ ⊤]⟩

/-- A topological space is discrete if every set is open, that is,
  its topology equals the discrete topology `⊥`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variant77c24c0fe0ce299b926277a4d07c6f6a85c59b20e243939bb0fcac0ac20eabfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variant77c24c0fe0ce299b926277a4d07c6f6a85c59b20e243939bb0fcac0ac20eabfb.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f43df944e428b066958ebdfbf7babca6642b0d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
