# Gammaℝ_one_sub_ne_zero_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a16c4f45-ae2a-b16c-049a-9dd9661a94f8",
  "kind": "lemma",
  "lexical_name": "Gammaℝ_one_sub_ne_zero_of_mem",
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
  "slug": "gamma-one-sub-ne-zero-of-mem--21383df33109b2f71eed4972",
  "source": {
    "blob": "8afe5c752e7ee61c4c9c658b1e153f47d630cba0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21383df33109b2f71eed4972fd662c338034012a0d5424567525967e8076571a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a16c4f45-ae2a-b16c-049a-9dd9661a94f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Gammaℝ_one_sub_ne_zero_of_mem {s : ℂ} (hs : s ∈ Rectangle (zc c R) (wc c R)) (h1 : s ≠ 1) :
    Gammaℝ (1 - s) ≠ 0 :=
  Gammaℝ_one_sub_ne_zero_of_re (re_bounds_of_mem hc1 hc2 hR hs).2 h1

end Geometry

/-! ### §2. The four explicit pieces -/

variable (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) (hc1 : 1 < c) (hc2 : c ≤ 5 / 4) (hR : 0 < R)
include hk hkc hc1 hc2 hR

omit hc1 hc2 hR in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Rectangle/Variantdf9264753a2caa0cc0bd88c0d565855af85e93cc760c8c85169e3b225687b294.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8afe5c752e7ee61c4c9c658b1e153f47d630cba0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
