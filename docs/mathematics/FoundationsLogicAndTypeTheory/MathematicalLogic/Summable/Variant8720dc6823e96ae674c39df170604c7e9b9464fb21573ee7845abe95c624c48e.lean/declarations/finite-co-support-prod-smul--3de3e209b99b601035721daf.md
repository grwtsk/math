# finite_co_support_prod_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13aff0d8-be1a-3a06-43e3-616385ae245c",
  "kind": "theorem",
  "lexical_name": "finite_co_support_prod_smul",
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
  "slug": "finite-co-support-prod-smul--3de3e209b99b601035721daf",
  "source": {
    "blob": "b2cd91e61520d4739ee258f5c80957be7777cd77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 358,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3de3e209b99b601035721daff25e475983b34ccdd0d1a12052dd50bb7dfb3c46",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13aff0d8-be1a-3a06-43e3-616385ae245c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_co_support_prod_smul (s : SummableFamily Γ R α)
    (t : SummableFamily Γ' V β) (g : Γ') :
    Finite {(ab : α × β) |
      ((fun (ab : α × β) ↦ (of R).symm (s ab.1 • (of R) (t ab.2))) ab).coeff g ≠ 0} := by
  apply ((VAddAntidiagonal s.isPWO_iUnion_support t.isPWO_iUnion_support g).finite_toSet.biUnion'
    (fun gh _ => smul_support_finite s t gh)).subset _
  exact fun ab hab => by
    simp only [coeff_smul, ne_eq, Set.mem_setOf_eq] at hab
    obtain ⟨ij, hij⟩ := Finset.exists_ne_zero_of_sum_ne_zero hab
    simp only [mem_coe, mem_vaddAntidiagonal, Set.mem_iUnion, mem_support, ne_eq,
      Function.mem_support, exists_prop, Prod.exists]
    exact ⟨ij.1, ij.2, ⟨⟨ab.1, left_ne_zero_of_smul hij.2⟩, ⟨ab.2, right_ne_zero_of_smul hij.2⟩,
      ((mem_vaddAntidiagonal _ _ _).mp hij.1).2.2⟩, hij.2⟩

/-- An elementwise scalar multiplication of one summable family on another. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Summable/Variant8720dc6823e96ae674c39df170604c7e9b9464fb21573ee7845abe95c624c48e.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2cd91e61520d4739ee258f5c80957be7777cd77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
