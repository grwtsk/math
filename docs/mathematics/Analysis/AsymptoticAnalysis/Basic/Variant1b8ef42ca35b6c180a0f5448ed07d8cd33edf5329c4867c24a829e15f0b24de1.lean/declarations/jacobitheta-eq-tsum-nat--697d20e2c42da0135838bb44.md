# jacobiTheta_eq_tsum_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae9c1567289b5f149eaaf978ba667ecff9488569",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4653191-fe29-3702-3aa9-5783483008da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:36c566ad-facd-2d5a-2567-66b94ce98d87",
  "kind": "theorem",
  "lexical_name": "jacobiTheta_eq_tsum_nat",
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
  "slug": "jacobitheta-eq-tsum-nat--697d20e2c42da0135838bb44",
  "source": {
    "blob": "ae9c1567289b5f149eaaf978ba667ecff9488569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:697d20e2c42da0135838bb44bb42fe8de121733d9f4833f82e17de145d4e8f52",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36c566ad-facd-2d5a-2567-66b94ce98d87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiTheta_eq_tsum_nat {z : ℂ} (hz : 0 < im z) :
    jacobiTheta z = ↑1 + ↑2 * ∑' n : ℕ, cexp (π * I * ((n : ℂ) + 1) ^ 2 * z) := by
  rw [(hasSum_nat_jacobiTheta hz).tsum_eq, mul_div_cancel' _ (two_ne_zero' ℂ), ← add_sub_assoc,
    add_sub_cancel']
#align jacobi_theta_eq_tsum_nat jacobiTheta_eq_tsum_nat

/-- An explicit upper bound for `‖jacobiTheta τ - 1‖`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9c1567289b5f149eaaf978ba667ecff9488569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
