# ClassGroup.integralRep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc71f6a5a8820b02555093a878dce19e33e9cb3dfbbac4731a43bce7a7769d29",
  "kind": "def",
  "lexical_name": "ClassGroup.integralRep",
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
  "slug": "classgroup-integralrep--7c122cc4705c8b41804aabb4",
  "source": {
    "blob": "5f9e1fb661d6034f3f85281fb550d5cc66e25ce8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 327,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c122cc4705c8b41804aabb4bc392db3376f73c433e620940bfd9e95d9debf18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc71f6a5a8820b02555093a878dce19e33e9cb3dfbbac4731a43bce7a7769d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ClassGroup.integralRep
    (I : FractionalIdeal R⁰ (FractionRing R)) :
    Ideal R :=
  let a := I.2.choose
  { carrier := {x | (algebraMap R _ a)⁻¹ * algebraMap R _ x ∈ I.1}
    add_mem' := by
      simp only [Set.mem_setOf_eq, RingHom.map_add, mul_add]
      exact fun ha hb => Submodule.add_mem _ ha hb
    zero_mem' := by
      simp only [Set.mem_setOf_eq, RingHom.map_zero, mul_zero]
      exact Submodule.zero_mem _
    smul_mem' := by
      intro c _ hb
      simp only [smul_eq_mul, Set.mem_setOf_eq, RingHom.map_mul,
        mul_left_comm ((algebraMap R (FractionRing R)) a)⁻¹]
      rw [← Algebra.smul_def c]
      exact Submodule.smul_mem _ c hb }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ClassGroup/Variant3879e088fe2a3f4bac92d0fe0ba58d887ff5f26191caaebc2b548b33a932359d.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f9e1fb661d6034f3f85281fb550d5cc66e25ce8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
