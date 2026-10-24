# deriv_const_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377267c8b6e288e96f711bf11e6ff664aa729aee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/889bd8bd8f54da11861b4de1a6142c93551356f1cb72e88359dd602e1d927a78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:666058e5-4254-5580-d6e3-52857e722d25",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c462125f-d62a-8ac5-e88d-474f27daa8c1",
  "kind": "lemma",
  "lexical_name": "deriv_const_smul'",
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
  "slug": "deriv-const-smul--cb7b2736d6d328534a64ff3e",
  "source": {
    "blob": "377267c8b6e288e96f711bf11e6ff664aa729aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 178,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant889bd8bd8f54da11861b4de1a6142c93551356f1cb72e88359dd602e1d927a78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb7b2736d6d328534a64ff3ea0467b33df337bc9743c94ae38fbf4982e7eae4c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant889bd8bd8f54da11861b4de1a6142c93551356f1cb72e88359dd602e1d927a78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c462125f-d62a-8ac5-e88d-474f27daa8c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma deriv_const_smul' {f : 𝕜 → F} {x : 𝕜} {R : Type*} [Field R] [Module R F] [SMulCommClass 𝕜 R F]
    [ContinuousConstSMul R F] (c : R) :
    deriv (fun y ↦ c • f y) x = c • deriv f x := by
  simp only [← derivWithin_univ, derivWithin_const_smul']

end ConstSMul

section Mul

/-! ### Derivative of the multiplication of two functions -/


variable {𝕜' 𝔸 : Type*} [NormedField 𝕜'] [NormedRing 𝔸] [NormedAlgebra 𝕜 𝕜'] [NormedAlgebra 𝕜 𝔸]
  {c d : 𝕜 → 𝔸} {c' d' : 𝔸} {u v : 𝕜 → 𝕜'}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant889bd8bd8f54da11861b4de1a6142c93551356f1cb72e88359dd602e1d927a78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Mul/Variant889bd8bd8f54da11861b4de1a6142c93551356f1cb72e88359dd602e1d927a78.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377267c8b6e288e96f711bf11e6ff664aa729aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
