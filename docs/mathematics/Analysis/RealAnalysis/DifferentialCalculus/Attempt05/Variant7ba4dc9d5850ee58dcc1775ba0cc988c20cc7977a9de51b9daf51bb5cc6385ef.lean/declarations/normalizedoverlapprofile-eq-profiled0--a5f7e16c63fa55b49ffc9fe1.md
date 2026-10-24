# normalizedOverlapProfile_eq_profileD0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b50e112-16f1-7838-e7fb-7df06fcb24e3",
  "kind": "theorem",
  "lexical_name": "normalizedOverlapProfile_eq_profileD0",
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
  "slug": "normalizedoverlapprofile-eq-profiled0--a5f7e16c63fa55b49ffc9fe1",
  "source": {
    "blob": "24b9ecb8ff12c0445914c8fbb36aa7733edffe36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant7ba4dc9d5850ee58dcc1775ba0cc988c20cc7977a9de51b9daf51bb5cc6385ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a5f7e16c63fa55b49ffc9fe1fb10575ac536d8ad0d2fe897a1765d5ae00dcc22",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant7ba4dc9d5850ee58dcc1775ba0cc988c20cc7977a9de51b9daf51bb5cc6385ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b50e112-16f1-7838-e7fb-7df06fcb24e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem normalizedOverlapProfile_eq_profileD0 {A : ℝ} (hA : 0 < A) :
    normalizedOverlapProfile A = profileD0 A := by
  funext t
  unfold normalizedOverlapProfile overlapProfile overlapP0 profileD0
  congr 1
  field_simp [hA.ne']
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant7ba4dc9d5850ee58dcc1775ba0cc988c20cc7977a9de51b9daf51bb5cc6385ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant7ba4dc9d5850ee58dcc1775ba0cc988c20cc7977a9de51b9daf51bb5cc6385ef.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24b9ecb8ff12c0445914c8fbb36aa7733edffe36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
