# visible_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:220d2b51-8a83-a5b1-ba45-c5e338e39c51",
  "kind": "theorem",
  "lexical_name": "visible_ne_zero",
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
  "slug": "visible-ne-zero--2aa360280e8cb9d57973669a",
  "source": {
    "blob": "87c5cc57420673dae1f2400803c4647cf6f3ab06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/Algebra/LinearAlgebra/InterventionDefect/Variant6459276f33e7cd8df4bbe059aee715c026542b5a21c0537712610fcdcb20addf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aa360280e8cb9d57973669a5a2a2355e70627fbcc61658dba0169b769ec1d34",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/InterventionDefect/Variant6459276f33e7cd8df4bbe059aee715c026542b5a21c0537712610fcdcb20addf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:220d2b51-8a83-a5b1-ba45-c5e338e39c51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem visible_ne_zero
    (G : PositiveForm V) {x : V} (hx : G.Visible x) :
    x ≠ 0 := by
  intro hzero
  unfold Visible at hx
  rw [hzero, G.zero_self] at hx
  exact (lt_irrefl 0) hx

end PositiveForm

/-- A baseline/intervention pair of linear maps into the Phase-III state space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/InterventionDefect/Variant6459276f33e7cd8df4bbe059aee715c026542b5a21c0537712610fcdcb20addf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/InterventionDefect/Variant6459276f33e7cd8df4bbe059aee715c026542b5a21c0537712610fcdcb20addf.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87c5cc57420673dae1f2400803c4647cf6f3ab06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
