# closedOnsetPrefix_below_first

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65a37a5c-f556-9af0-c5fb-ab2aa007543d",
  "kind": "theorem",
  "lexical_name": "closedOnsetPrefix_below_first",
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
  "slug": "closedonsetprefix-below-first--656f18721f4193ec4d0a5d16",
  "source": {
    "blob": "215784fd55a1daa20e34e24068f067b08f5c786b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:656f18721f4193ec4d0a5d16db41611fca3c31794245a9d6b75b797330739727",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65a37a5c-f556-9af0-c5fb-ab2aa007543d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedOnsetPrefix_below_first {t : ℝ} (ht : t < 2*Real.log 2) :
    closedOnsetPrefix t = 0 := by
  unfold closedOnsetPrefix
  apply tsum_eq_zero_of_forall_eq_zero
  intro pk
  unfold closedOnsetAtom
  exact if_neg (not_le.mpr (ht.trans_le (powerOnset_ge_first pk.1 pk.2)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantaff2fb3b66ce7caac0fe04422889eca050c01a12b351f40a45b6cb5f79e783e2.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `215784fd55a1daa20e34e24068f067b08f5c786b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
