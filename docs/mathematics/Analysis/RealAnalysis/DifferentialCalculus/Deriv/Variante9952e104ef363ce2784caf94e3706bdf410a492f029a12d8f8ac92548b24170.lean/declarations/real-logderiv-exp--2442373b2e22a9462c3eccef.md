# Real.LogDeriv_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40e5343c52a1a7385e7233a36132dc271572e341",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1024,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9952e104ef363ce2784caf94e3706bdf410a492f029a12d8f8ac92548b24170.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39f1e91f-a025-b622-743f-45c6bd06fe51",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db60ef2a-1039-2de2-4616-bdab38d54236",
  "kind": "theorem",
  "lexical_name": "Real.LogDeriv_exp",
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
  "slug": "real-logderiv-exp--2442373b2e22a9462c3eccef",
  "source": {
    "blob": "40e5343c52a1a7385e7233a36132dc271572e341",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1041,
    "line": 1024,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variante9952e104ef363ce2784caf94e3706bdf410a492f029a12d8f8ac92548b24170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2442373b2e22a9462c3eccef691e96d90c25f863ae17283894efd1b926a4695c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variante9952e104ef363ce2784caf94e3706bdf410a492f029a12d8f8ac92548b24170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db60ef2a-1039-2de2-4616-bdab38d54236`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1024–1041.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.LogDeriv_exp : logDeriv (Real.exp) = 1 := by
  ext
  rw [logDeriv, Real.deriv_exp, Pi.div_apply, ← exp_sub, sub_self, exp_zero, Pi.one_apply]

end LogDeriv

end

namespace Mathlib.Meta.Positivity
open Lean Meta Qq

private alias ⟨_, sinh_pos_of_pos⟩ := Real.sinh_pos_iff
private alias ⟨_, sinh_nonneg_of_nonneg⟩ := Real.sinh_nonneg_iff
private alias ⟨_, sinh_ne_zero_of_ne_zero⟩ := Real.sinh_ne_zero

/-- Extension for the `positivity` tactic: `Real.sinh` is positive/nonnegative/nonzero if its input
is. -/
@[positivity Real.sinh _]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variante9952e104ef363ce2784caf94e3706bdf410a492f029a12d8f8ac92548b24170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variante9952e104ef363ce2784caf94e3706bdf410a492f029a12d8f8ac92548b24170.lean#L1024).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40e5343c52a1a7385e7233a36132dc271572e341` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
