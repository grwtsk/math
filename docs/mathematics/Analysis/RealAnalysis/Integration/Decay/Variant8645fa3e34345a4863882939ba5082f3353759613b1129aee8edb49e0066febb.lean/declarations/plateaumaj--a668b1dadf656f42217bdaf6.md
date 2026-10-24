# plateauMaj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cc65cd90e8e3f78e0469a1458c80cc669c0030a3f1a9bb3a1ce11eb99af31d5",
  "kind": "def",
  "lexical_name": "plateauMaj",
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
  "slug": "plateaumaj--a668b1dadf656f42217bdaf6",
  "source": {
    "blob": "67c96e7c3575ca2a9acaf1f66e4172a190ed7a42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 456,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a668b1dadf656f42217bdaf6ce4fea65d5f5e50ae1e3be4f46b678e25b9583f8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cc65cd90e8e3f78e0469a1458c80cc669c0030a3f1a9bb3a1ce11eb99af31d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private noncomputable def plateauMaj (a b : ℝ) (r : ℝ) : ℝ :=
  (Icc (-1:ℝ) 1).indicator (fun _ => a) r
    + b * ((Ioi (1:ℝ)).indicator (fun x => x ^ (-2:ℝ)) r + (Ioi (1:ℝ)).indicator (fun x => x ^ (-2:ℝ)) (-r))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant8645fa3e34345a4863882939ba5082f3353759613b1129aee8edb49e0066febb.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67c96e7c3575ca2a9acaf1f66e4172a190ed7a42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
