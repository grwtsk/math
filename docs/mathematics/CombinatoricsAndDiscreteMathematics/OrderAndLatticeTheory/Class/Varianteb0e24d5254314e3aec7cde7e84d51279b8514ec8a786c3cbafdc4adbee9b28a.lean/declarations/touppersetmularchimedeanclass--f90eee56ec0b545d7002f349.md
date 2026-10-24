# toUpperSetMulArchimedeanClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b8b5147d4e567747b1fb27c678ef1be50f7002c0d10d15b374aa07fcd2c5e6da",
  "kind": "def",
  "lexical_name": "toUpperSetMulArchimedeanClass",
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
  "slug": "touppersetmularchimedeanclass--f90eee56ec0b545d7002f349",
  "source": {
    "blob": "06fbc370beee0135a44a1d8394614927229779a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 856,
    "line": 845,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f90eee56ec0b545d7002f3496e46b182f757188fb4a9b52b7255fb2b05a04745",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b8b5147d4e567747b1fb27c678ef1be50f7002c0d10d15b374aa07fcd2c5e6da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 845–856.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toUpperSetMulArchimedeanClass :
    UpperSet (FiniteMulArchimedeanClass M) ↪o UpperSet (MulArchimedeanClass M) :=
  .ofStrictMono (fun s ↦
    { carrier := {a | ∀ h : a ≠ ⊤, ⟨a, h⟩ ∈ s}
      upper' _ _ le mem ne := s.upper le (mem <| ne_top_of_le_ne_top ne le) })
  fun s t lt ↦ by
    simp only [lt_iff_le_not_ge, ne_eq, ← SetLike.mem_coe, ← UpperSet.coe_subset_coe,
      UpperSet.coe_mk, Set.subset_def] at lt ⊢
    exact ⟨fun a ha1 ha2 ↦ lt.1 _ (ha1 ha2),
      fun hst ↦ (lt.2 fun ⟨x, hx⟩ mem ↦ hst x (fun _ ↦ mem) _)⟩

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Class/Varianteb0e24d5254314e3aec7cde7e84d51279b8514ec8a786c3cbafdc4adbee9b28a.lean#L845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06fbc370beee0135a44a1d8394614927229779a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
