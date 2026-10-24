# roots_square_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa89aa6a-5e4c-97d1-57e1-3beadc004494",
  "kind": "lemma",
  "lexical_name": "roots_square_sum",
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
  "slug": "roots-square-sum--69ec8ea24f34c811ca6c6c45",
  "source": {
    "blob": "d9551480d00ea8608119351ab61847c39beffaa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69ec8ea24f34c811ca6c6c458e2b0eced8bbb53cd8a95aa63dd642bb03b0a74c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa89aa6a-5e4c-97d1-57e1-3beadc004494`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma roots_square_sum (s : Multiset ℂ) :
    (s.map (· ^ 2)).sum = s.esymm 1 ^ 2 - 2 * s.esymm 2 := by
  induction s using Multiset.induction_on with
  | empty => norm_num [Multiset.esymm, Multiset.powersetCard_zero_right]
  | cons x s ih =>
    rw [Multiset.map_cons, Multiset.sum_cons, ih,
      esymm_cons_succ s x 0, esymm_cons_succ s x 1]
    have h0 : s.esymm 0 = 1 := by simp [Multiset.esymm]
    rw [h0]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9551480d00ea8608119351ab61847c39beffaa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
