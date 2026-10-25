# setoidPrestructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec376b2e3b9fdb9ab995d8a4ffd9a4405cb34d3b3820e18fc9b9e9a1afd64863",
  "kind": "instance",
  "lexical_name": "setoidPrestructure",
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
  "slug": "setoidprestructure--3bd7a0aec2bd1e009a682525",
  "source": {
    "blob": "338cdcea73860e678efa8c017298f04bb659347d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bd7a0aec2bd1e009a682525e5ccd38236ded107994c785e8185c32a22a93948",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec376b2e3b9fdb9ab995d8a4ffd9a4405cb34d3b3820e18fc9b9e9a1afd64863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance setoidPrestructure : L.Prestructure ((u : Filter α).productSetoid M) :=
  { (u : Filter α).productSetoid M with
    toStructure :=
      { funMap := fun {_} f x a => funMap f fun i => x i a
        RelMap := fun {_} r x => ∀ᶠ a : α in u, RelMap r fun i => x i a }
    fun_equiv := fun {n} f x y xy => by
      refine mem_of_superset (iInter_mem.2 xy) fun a ha => ?_
      simp only [Set.mem_iInter, Set.mem_setOf_eq] at ha
      simp only [Set.mem_setOf_eq, ha]
    rel_equiv := fun {n} r x y xy => by
      rw [← iff_eq_eq]
      refine ⟨fun hx => ?_, fun hy => ?_⟩
      · refine mem_of_superset (inter_mem hx (iInter_mem.2 xy)) ?_
        rintro a ⟨ha1, ha2⟩
        simp only [Set.mem_iInter, Set.mem_setOf_eq] at *
        rw [← funext ha2]
        exact ha1
      · refine mem_of_superset (inter_mem hy (iInter_mem.2 xy)) ?_
        rintro a ⟨ha1, ha2⟩
        simp only [Set.mem_iInter, Set.mem_setOf_eq] at *
        rw [funext ha2]
        exact ha1 }

variable {M} {u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `338cdcea73860e678efa8c017298f04bb659347d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
