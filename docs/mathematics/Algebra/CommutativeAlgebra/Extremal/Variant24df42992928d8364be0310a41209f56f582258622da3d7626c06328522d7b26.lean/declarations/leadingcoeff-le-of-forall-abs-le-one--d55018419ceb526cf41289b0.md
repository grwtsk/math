# leadingCoeff_le_of_forall_abs_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2eb9c7be31f2c96f41bc6a7e97e29256d9b76163",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:daf8ec64-0845-119a-dd16-d9756331d7d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e6a0c23-6e0e-3b28-0f7f-f0a00848d2b8",
  "kind": "theorem",
  "lexical_name": "leadingCoeff_le_of_forall_abs_le_one",
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
  "slug": "leadingcoeff-le-of-forall-abs-le-one--d55018419ceb526cf41289b0",
  "source": {
    "blob": "2eb9c7be31f2c96f41bc6a7e97e29256d9b76163",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d55018419ceb526cf41289b034842dc700846cd11d3f74243b9b307fa2e4bf07",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e6a0c23-6e0e-3b28-0f7f-f0a00848d2b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leadingCoeff_le_of_forall_abs_le_one {n : ℕ} {P : ℝ[X]}
    (hPdeg : P.degree ≤ n) (hPbnd : ∀ x ∈ Set.Icc (-1) 1, |P.eval x| ≤ 1) :
    P.leadingCoeff ≤ 2 ^ (n - 1) := by
  by_cases P = 0
  case pos hP => simp [hP]
  case neg hP =>
    lift P.degree to ℕ using degree_ne_bot.mpr hP with d hd
    replace hPdeg : d ≤ n := (WithBot.coe_le rfl).mp hPdeg
    rw [leadingCoeff, natDegree_eq_of_degree_eq_some hd.symm]
    grw [coeff_le_of_forall_abs_le_one (le_of_eq hd.symm) hPbnd, hPdeg]
    norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extremal/Variant24df42992928d8364be0310a41209f56f582258622da3d7626c06328522d7b26.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2eb9c7be31f2c96f41bc6a7e97e29256d9b76163` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
