# psi_sq_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9776201c0bb8454ae8f607c7f90145cf34db5a53",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 429,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ef26034b-d685-7fc0-2642-841a75aaa98a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8f4fc0d-db0c-83c6-434e-ea28052a5fd7",
  "kind": "theorem",
  "lexical_name": "psi_sq_integrable",
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
  "slug": "psi-sq-integrable--e98621747f3ebec276dae1d9",
  "source": {
    "blob": "9776201c0bb8454ae8f607c7f90145cf34db5a53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 429,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98621747f3ebec276dae1d90b7afd2f636c33bd9cb8bfcd42e5dc90be084f75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8f4fc0d-db0c-83c6-434e-ea28052a5fd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psi_sq_integrable (hc : 4 ≤ c) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    Integrable (fun r => psiC c L w r ^ 2) := by
  have hwL' : 2 * w ≤ L := by linarith
  refine ((psi_integrable hc hw hwL).const_mul L).mono'
    (psi_measurable.pow_const 2).aestronglyMeasurable (Eventually.of_forall fun r => ?_)
  have h0 := psi_nonneg hc hw hwL' r
  have h1 := psi_le_L hc hw hwL' r
  rw [Real.norm_of_nonneg (sq_nonneg _)]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PsiC/Variant0101af29d084ff462842461655364f23f80e6dfebd34381be4b6b3c73fa20846.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9776201c0bb8454ae8f607c7f90145cf34db5a53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
