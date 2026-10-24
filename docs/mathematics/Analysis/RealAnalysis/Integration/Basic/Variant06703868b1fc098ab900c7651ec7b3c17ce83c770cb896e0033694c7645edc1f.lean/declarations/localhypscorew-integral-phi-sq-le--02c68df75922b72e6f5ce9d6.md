# LocalHypsCoreW.integral_Phi_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 667,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d5e36fc-6664-87e4-5096-79bd1ab07005",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b34a4861-8f5e-33b4-280a-cfbfb7f1ab64",
  "kind": "lemma",
  "lexical_name": "LocalHypsCoreW.integral_Phi_sq_le",
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
  "slug": "localhypscorew-integral-phi-sq-le--02c68df75922b72e6f5ce9d6",
  "source": {
    "blob": "7555aaf5deacab10b78c258feefd3537a539fd36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 667,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02c68df75922b72e6f5ce9d6278d59009685dacd9faa8ed16b532255a6b79a61",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b34a4861-8f5e-33b4-280a-cfbfb7f1ab64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LocalHypsCoreW.integral_Phi_sq_le {cϱ : ℝ} {p : Setting} {F : LocalFun}
    (hF : LocalHypsCoreW cϱ p F) : ∫ x, F.Phi x ^ 2 ≤ 2 * π * p.L := by
  rw [hF.Phi_sq_integral]
  have hb1 : F.b ≤ 1 := hF.b_le_a.trans hF.a_le_one
  have hL := hF.L_pos
  calc 2 * π * F.b * p.L = (2 * π * p.L) * F.b := by ring
    _ ≤ (2 * π * p.L) * 1 := by gcongr
    _ = 2 * π * p.L := mul_one _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06703868b1fc098ab900c7651ec7b3c17ce83c770cb896e0033694c7645edc1f.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7555aaf5deacab10b78c258feefd3537a539fd36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
