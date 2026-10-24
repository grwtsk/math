# same_sub_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b54f5b1-3d47-7cc9-0274-c614fa5caae8",
  "kind": "theorem",
  "lexical_name": "same_sub_div",
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
  "slug": "same-sub-div--30fb3d033b491f8e907eb1f8",
  "source": {
    "blob": "824923690723c9059cb098f86611dba0f7e62746",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 108,
    "path": "GRWTSK/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30fb3d033b491f8e907eb1f845aa6b211b581143183c609fe799155ba2f8b9eb",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b54f5b1-3d47-7cc9-0274-c614fa5caae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem same_sub_div {a b : K} (h : b ≠ 0) : (b - a) / b = 1 - a / b := by
  simpa only [← @div_self _ _ b h] using (div_sub_div_same b a b).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta5b688f5335fbb3723815cdc02fb3d6c17196dd8bc32d60c17f15a7e0d2c1e4e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `824923690723c9059cb098f86611dba0f7e62746` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
