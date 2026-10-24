# _root_.GRWTSK.Algebra.LinearAlgebra.PowerBasisNormGenEqCoeffZeroMinpoly.Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.IntermediateField.AdjoinSimple.norm_gen_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c514815-9fbe-2de2-c5ac-40897fe8a5c5",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.PowerBasisNormGenEqCoeffZeroMinpoly.Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.IntermediateField.AdjoinSimple.norm_gen_eq_one",
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
  "slug": "root-grwtsk-algebra-linearalgebra-powerbasisnormgeneqcoeffzerominpoly-va--37c9f2a264cc3ee614e44a0c",
  "source": {
    "blob": "0971866de5214fd5f1ed42447cedb46ab9d060b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37c9f2a264cc3ee614e44a0ce112dfa896196503837e8e9d1310cb6fb8626b4a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c514815-9fbe-2de2-c5ac-40897fe8a5c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.PowerBasisNormGenEqCoeffZeroMinpoly.Variant964d5c4822050206d3bf4d08afcd135dc31540684878268bdd77086dfdda87a0.IntermediateField.AdjoinSimple.norm_gen_eq_one {x : L} (hx : ¬IsIntegral K x) :
    norm K (AdjoinSimple.gen K x) = 1 := by
  rw [norm_eq_one_of_not_exists_basis]
  contrapose! hx
  obtain ⟨s, ⟨b⟩⟩ := hx
  refine .of_mem_of_fg K⟮x⟯.toSubalgebra ?_ x ?_
  · exact (Submodule.fg_iff_finiteDimensional _).mpr (.of_fintype_basis b)
  · exact IntermediateField.subset_adjoin K _ (Set.mem_singleton x)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0e5ed7dd33782e08ec1210124e053ecf0b5b80ebeb3399e29f24ca00a51268f7.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0971866de5214fd5f1ed42447cedb46ab9d060b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
