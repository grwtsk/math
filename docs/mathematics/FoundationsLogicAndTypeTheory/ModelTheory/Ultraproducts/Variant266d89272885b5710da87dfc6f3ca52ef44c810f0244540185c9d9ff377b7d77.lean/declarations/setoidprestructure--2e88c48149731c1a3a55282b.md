# setoidPrestructure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8592de6a67393ccacc8ae10e651ec956b4722a76c44c8ea830a66d03ca7d171",
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
  "slug": "setoidprestructure--2e88c48149731c1a3a55282b",
  "source": {
    "blob": "b91cdc769a047751a29ec48aba2ef0c2a10a0976",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e88c48149731c1a3a55282b41d4185175d471e8e1c3f1ad7f28d5db2aba59b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8592de6a67393ccacc8ae10e651ec956b4722a76c44c8ea830a66d03ca7d171`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance setoidPrestructure : L.Prestructure ((u : Filter α).productSetoid M) :=
  { (u : Filter α).productSetoid M with
    toStructure :=
      { funMap := fun {n} f x a => funMap f fun i => x i a
        RelMap := fun {n} r x => ∀ᶠ a : α in u, RelMap r fun i => x i a }
    fun_equiv := fun {n} f x y xy => by
      refine' mem_of_superset (iInter_mem.2 xy) fun a ha => _
      simp only [Set.mem_iInter, Set.mem_setOf_eq] at ha
      simp only [Set.mem_setOf_eq, ha]
    rel_equiv := fun {n} r x y xy => by
      rw [← iff_eq_eq]
      refine' ⟨fun hx => _, fun hy => _⟩
      · refine' mem_of_superset (inter_mem hx (iInter_mem.2 xy)) _
        rintro a ⟨ha1, ha2⟩
        simp only [Set.mem_iInter, Set.mem_setOf_eq] at *
        rw [← funext ha2]
        exact ha1
      · refine' mem_of_superset (inter_mem hy (iInter_mem.2 xy)) _
        rintro a ⟨ha1, ha2⟩
        simp only [Set.mem_iInter, Set.mem_setOf_eq] at *
        rw [funext ha2]
        exact ha1 }
#align first_order.language.ultraproduct.setoid_prestructure FirstOrder.Language.Ultraproduct.setoidPrestructure

variable {M} {u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant266d89272885b5710da87dfc6f3ca52ef44c810f0244540185c9d9ff377b7d77.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b91cdc769a047751a29ec48aba2ef0c2a10a0976` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
