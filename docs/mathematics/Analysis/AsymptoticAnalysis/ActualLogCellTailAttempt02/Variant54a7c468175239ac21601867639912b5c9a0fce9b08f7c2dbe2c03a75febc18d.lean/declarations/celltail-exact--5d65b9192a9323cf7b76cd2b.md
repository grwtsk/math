# cellTail_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e194f869-1c0c-8350-8346-80bf62e5db32",
  "kind": "theorem",
  "lexical_name": "cellTail_exact",
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
  "slug": "celltail-exact--5d65b9192a9323cf7b76cd2b",
  "source": {
    "blob": "21d15d55a1ee92a9dae6759605579e0e68fd5ff4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 27,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d65b9192a9323cf7b76cd2b5d0a4be69e429e55ada6f4794fab8cb3f3598d99",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e194f869-1c0c-8350-8346-80bf62e5db32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cellTail_exact (N : ℕ) :
    cellTail N = stieltjesSequence (N+1)-firstStieltjesConstant +
      ((harmonic (N+1) : ℝ)-Real.log (N+1)-Real.eulerMascheroniConstant) := by
  have h := cellTail_prefix N
  rw [logCellSum_eval] at h
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellTailAttempt02/Variant54a7c468175239ac21601867639912b5c9a0fce9b08f7c2dbe2c03a75febc18d.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21d15d55a1ee92a9dae6759605579e0e68fd5ff4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
