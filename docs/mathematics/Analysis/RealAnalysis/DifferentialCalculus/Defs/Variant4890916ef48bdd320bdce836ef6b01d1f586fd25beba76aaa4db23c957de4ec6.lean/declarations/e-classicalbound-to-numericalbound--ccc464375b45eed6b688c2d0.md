# Eψ.classicalBound.to_numericalBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5addac012b292e2f595824a9e15f98d6ce1ed7ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 269,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4890916ef48bdd320bdce836ef6b01d1f586fd25beba76aaa4db23c957de4ec6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41850eb8-171b-68d4-5f1c-466e4682c476",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6532e1a1-9f7f-449e-ed6e-bfaca788a6e9",
  "kind": "lemma",
  "lexical_name": "Eψ.classicalBound.to_numericalBound",
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
  "slug": "e-classicalbound-to-numericalbound--ccc464375b45eed6b688c2d0",
  "source": {
    "blob": "5addac012b292e2f595824a9e15f98d6ce1ed7ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 269,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant4890916ef48bdd320bdce836ef6b01d1f586fd25beba76aaa4db23c957de4ec6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccc464375b45eed6b688c2d009951e5ce59e481c6e9482d93a701173203bb10b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant4890916ef48bdd320bdce836ef6b01d1f586fd25beba76aaa4db23c957de4ec6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6532e1a1-9f7f-449e-ed6e-bfaca788a6e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Eψ.classicalBound.to_numericalBound
    (A B C R x₀ x₁ : ℝ) (hA : 0 < A) (hB : 0 < B)
    (hC : 0 < C) (hR : 0 < R)
    (hEψ : Eψ.classicalBound A B C R x₀)
    (hx₁ : x₁ ≥ max x₀ (Real.exp (R * (2 * B / C) ^ 2))) :
    Eψ.numericalBound x₁ (fun x ↦ admissible_bound A B C R x) :=
  fun x hx ↦
    le_trans (hEψ x (le_trans (le_max_left ..) (le_trans hx₁ hx)))
      (admissible_bound.mono A B C R hA hB hC hR
        (Set.mem_Ici.mpr (le_trans (le_max_right ..) hx₁))
        (Set.mem_Ici.mpr (le_trans (le_max_right ..) (le_trans hx₁ hx))) hx)

@[blueprint "classical-to-numeric"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant4890916ef48bdd320bdce836ef6b01d1f586fd25beba76aaa4db23c957de4ec6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variant4890916ef48bdd320bdce836ef6b01d1f586fd25beba76aaa4db23c957de4ec6.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5addac012b292e2f595824a9e15f98d6ce1ed7ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
