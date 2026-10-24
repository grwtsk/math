# log_one_add_le_two_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bf129e1-1fb6-5ef6-0143-6f245a690a00",
  "kind": "lemma",
  "lexical_name": "log_one_add_le_two_sqrt",
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
  "slug": "log-one-add-le-two-sqrt--200538a9d0109078cb44f029",
  "source": {
    "blob": "7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 34,
    "path": "GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:200538a9d0109078cb44f029d8d2a86331c100d5516c7835f5ad61112015a671",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bf129e1-1fb6-5ef6-0143-6f245a690a00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma log_one_add_le_two_sqrt (x : ℝ) (hx : 0 ≤ x) :
    Real.log (1+x) ≤ 2*Real.sqrt x := by
  have hs := Real.sq_sqrt hx
  have hn := Real.sqrt_nonneg x
  have hp : 0 < 1+Real.sqrt x := by positivity
  have hb : 1+x ≤ (1+Real.sqrt x)^2 := by nlinarith
  have hl := Real.log_le_log (by positivity : 0 < 1+x) hb
  rw [Real.log_pow] at hl
  have ht := Real.log_le_sub_one_of_pos hp
  norm_num at hl
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/LogarithmicGrowth__SourceOccurrence23585199f302a60c1ad19202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ee2b0992c61692d0d1bea138fe5ba4e217d0a9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
