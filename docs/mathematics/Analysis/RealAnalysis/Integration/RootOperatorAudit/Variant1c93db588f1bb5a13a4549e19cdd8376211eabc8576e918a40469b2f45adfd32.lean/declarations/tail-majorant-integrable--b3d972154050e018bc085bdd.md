# tail_majorant_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f652206-7303-a7a5-9834-61c9a5eb954b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17e83f3a-d637-9b11-032e-fb42cc67216f",
  "kind": "theorem",
  "lexical_name": "tail_majorant_integrable",
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
  "slug": "tail-majorant-integrable--b3d972154050e018bc085bdd",
  "source": {
    "blob": "ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 332,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3d972154050e018bc085bddda3cdcef589c99f13b5d40b74a29440fb133c318",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17e83f3a-d637-9b11-032e-fb42cc67216f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_majorant_integrable (N : ℝ) :
    IntegrableOn (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget) (Ioi N) := by
  have hi := (integrableOn_exp_mul_Ioi (a := -(1 / 2 : ℝ)) (by norm_num) N).const_mul
    (Real.exp (1 / 2) * derivativeBudget)
  change Integrable (fun t : ℝ => Real.exp ((1 - t) / 2) * derivativeBudget)
    (volume.restrict (Ioi N))
  convert hi using 1
  funext t
  rw [show (1 - t) / 2 = 1 / 2 + -(1 / 2) * t by ring, Real.exp_add]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variant1c93db588f1bb5a13a4549e19cdd8376211eabc8576e918a40469b2f45adfd32.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae602c7b0d3a5ea4f98274eb945ee879e21bd7a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
