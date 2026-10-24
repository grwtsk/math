# below_first_atom_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fda0d69c-6cb6-4d51-e1af-89c91b662aee",
  "kind": "theorem",
  "lexical_name": "below_first_atom_nonzero",
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
  "slug": "below-first-atom-nonzero--29cbf1dcf33e87257e8dae00",
  "source": {
    "blob": "e991837fa5f113c58a7c05b4873b24ff2ef68303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/ScopeFixtures/Varianta98523eaedc1a0395f278657aa6ea35554665d7b02380399cdd7c907750f579a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29cbf1dcf33e87257e8dae003704d7e9d6dd5a81d08aba01db4ba6ae2a9e74c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ScopeFixtures/Varianta98523eaedc1a0395f278657aa6ea35554665d7b02380399cdd7c907750f579a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fda0d69c-6cb6-4d51-e1af-89c91b662aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem below_first_atom_nonzero : mangoldtLogError (Real.log 2 / 2) < 0 := by
  have h : 0 < Real.log (2 : ℝ) := Real.log_pos (by norm_num)
  rw [mangoldtLogError_below_first_atom (by linarith : Real.log 2 / 2 < Real.log 2)]
  linarith

/-- The closed upper first atom differs from its atom-free left-side formula. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ScopeFixtures/Varianta98523eaedc1a0395f278657aa6ea35554665d7b02380399cdd7c907750f579a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ScopeFixtures/Varianta98523eaedc1a0395f278657aa6ea35554665d7b02380399cdd7c907750f579a.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e991837fa5f113c58a7c05b4873b24ff2ef68303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
