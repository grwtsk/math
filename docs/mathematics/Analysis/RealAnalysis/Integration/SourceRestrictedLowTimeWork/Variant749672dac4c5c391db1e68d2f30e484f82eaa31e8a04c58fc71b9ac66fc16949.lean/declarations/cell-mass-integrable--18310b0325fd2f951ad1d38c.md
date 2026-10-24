# cell_mass_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02af829810a29be5f0a1ba2214f2c2d59166d4f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/749672dac4c5c391db1e68d2f30e484f82eaa31e8a04c58fc71b9ac66fc16949.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cbc796e-7087-47bf-3832-9ea4e6399617",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e97b192-9522-c58b-c191-5610eb6aee14",
  "kind": "theorem",
  "lexical_name": "cell_mass_integrable",
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
  "slug": "cell-mass-integrable--18310b0325fd2f951ad1d38c",
  "source": {
    "blob": "02af829810a29be5f0a1ba2214f2c2d59166d4f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant749672dac4c5c391db1e68d2f30e484f82eaa31e8a04c58fc71b9ac66fc16949.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18310b0325fd2f951ad1d38c134ef2bdd57913f005083fc6c880d59bb8cb87aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant749672dac4c5c391db1e68d2f30e484f82eaa31e8a04c58fc71b9ac66fc16949.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e97b192-9522-c58b-c191-5610eb6aee14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cell_mass_integrable {k : ℝ} (hk : 0 < k) :
    IntervalIntegrable (fun u : ℝ => 1 / (u * Real.sqrt u)) volume k (k + 1) := by
  have hc : ContinuousOn (fun u : ℝ => 1 / (u * Real.sqrt u)) (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have hd : ContinuousAt (fun x : ℝ => x * Real.sqrt x) u :=
      continuousAt_id.mul continuousAt_id.sqrt
    exact (continuousAt_const.div hd
      (mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0))).continuousWithinAt
  exact hc.intervalIntegrable_of_Icc (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant749672dac4c5c391db1e68d2f30e484f82eaa31e8a04c58fc71b9ac66fc16949.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variant749672dac4c5c391db1e68d2f30e484f82eaa31e8a04c58fc71b9ac66fc16949.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02af829810a29be5f0a1ba2214f2c2d59166d4f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
