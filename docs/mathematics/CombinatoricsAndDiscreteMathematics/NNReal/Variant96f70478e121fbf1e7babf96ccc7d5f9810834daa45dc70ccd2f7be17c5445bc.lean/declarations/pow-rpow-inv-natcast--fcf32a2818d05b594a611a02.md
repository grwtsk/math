# pow_rpow_inv_natCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20f65f1e-d6c7-555b-ca7e-2f539b43a93f",
  "kind": "lemma",
  "lexical_name": "pow_rpow_inv_natCast",
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
  "slug": "pow-rpow-inv-natcast--fcf32a2818d05b594a611a02",
  "source": {
    "blob": "22faac2b0d10159dbff3de4f528814093bed3713",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 917,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcf32a2818d05b594a611a02f66fdfeea99b2ab6f9d18d6a6b3a1f76bae7e3a4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20f65f1e-d6c7-555b-ca7e-2f539b43a93f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_rpow_inv_natCast {n : ℕ} (hn : n ≠ 0) (x : ℝ≥0∞) : (x ^ n) ^ (n⁻¹ : ℝ) = x := by
  rw [← rpow_natCast, ← rpow_mul, mul_inv_cancel₀ (by positivity), rpow_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variant96f70478e121fbf1e7babf96ccc7d5f9810834daa45dc70ccd2f7be17c5445bc.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22faac2b0d10159dbff3de4f528814093bed3713` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
