# continuousOn_LFunctionResidueClassAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 333,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/08/082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec5fe972-467e-31b3-3f99-7828fdbbe103",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9741016-686f-fb7b-6444-232c4ff4a7bd",
  "kind": "lemma",
  "lexical_name": "continuousOn_LFunctionResidueClassAux",
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
  "slug": "continuouson-lfunctionresidueclassaux--6bbacc7d68b1a77427d01829",
  "source": {
    "blob": "4ca4dc098acc1ae00b08cc00185b830ece502f2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 333,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bbacc7d68b1a77427d0182936e1baeab28ece5b78cade9f5dea609f0af10257",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9741016-686f-fb7b-6444-232c4ff4a7bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma continuousOn_LFunctionResidueClassAux :
    ContinuousOn (LFunctionResidueClassAux a) {s | 1 ≤ s.re} := by
  refine (continuousOn_LFunctionResidueClassAux' a).mono fun s hs ↦ ?_
  rcases eq_or_ne s 1 with rfl | hs₁
  · simp only [ne_eq, Set.mem_setOf_eq, true_or]
  · simp only [ne_eq, Set.mem_setOf_eq, hs₁, false_or]
    exact fun χ ↦ LFunction_ne_zero_of_one_le_re χ (.inr hs₁) <| Set.mem_setOf.mp hs

variable {a}

open scoped LSeries.notation

/-- The auxiliary function agrees on `re s > 1` with the L-series of the von Mangoldt function
restricted to the residue class `a : ZMod q` minus the principal part `(q.totient)⁻¹/(s-1)`
of its pole at `s = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Variant082a2f3995da4ade91c2926d5d1dab0761953f2c2331ad6dcd5046a3a21d020d.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4dc098acc1ae00b08cc00185b830ece502f2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
