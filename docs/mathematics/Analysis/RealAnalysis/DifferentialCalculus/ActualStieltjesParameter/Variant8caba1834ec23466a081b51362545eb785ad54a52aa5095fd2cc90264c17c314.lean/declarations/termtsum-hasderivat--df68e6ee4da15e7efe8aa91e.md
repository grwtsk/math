# termTSum_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c910273-5448-f165-4a10-4e07775f0b7c",
  "kind": "theorem",
  "lexical_name": "termTSum_hasDerivAt",
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
  "slug": "termtsum-hasderivat--df68e6ee4da15e7efe8aa91e",
  "source": {
    "blob": "28811df880769b2ef31ffd03556bda9c0cf9689a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 156,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df68e6ee4da15e7efe8aa91eb2c6376f76978e69ccc98be08fd6f3e0d6da8956",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c910273-5448-f165-4a10-4e07775f0b7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem termTSum_hasDerivAt {s : ℝ} (hs : (1:ℝ)/2 < s) :
    HasDerivAt ZetaAsymptotics.termTSum (∑' n : ℕ, termDerivValue (n+1) s) s := by
  exact hasDerivAt_tsum_of_isPreconnected derivativeMajorant_summable
    isOpen_Ioi isPreconnected_Ioi
    (fun n y hy => term_hasDerivAt (by omega) hy)
    (fun n y hy => termDerivValue_bound (by omega) hy)
    (by norm_num : (1:ℝ)∈Ioi ((1:ℝ)/2)) ZetaAsymptotics.term_tsum_one.summable hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesParameter/Variant8caba1834ec23466a081b51362545eb785ad54a52aa5095fd2cc90264c17c314.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28811df880769b2ef31ffd03556bda9c0cf9689a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
