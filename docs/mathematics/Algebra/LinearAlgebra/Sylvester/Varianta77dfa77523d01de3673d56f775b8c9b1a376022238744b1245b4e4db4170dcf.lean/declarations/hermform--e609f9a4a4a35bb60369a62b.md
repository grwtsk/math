# hermForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:91863213307af116bfd678ce21a6117c3c6b4f29ec0c381937806c95ac78fb7e",
  "kind": "def",
  "lexical_name": "hermForm",
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
  "slug": "hermform--e609f9a4a4a35bb60369a62b",
  "source": {
    "blob": "e626e55ce1909069de83e287fb57423209371424",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e609f9a4a4a35bb60369a62b35db48a73445c3b674a727607786833b3b91e693",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:91863213307af116bfd678ce21a6117c3c6b4f29ec0c381937806c95ac78fb7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hermForm (A : Matrix n n 𝕜) (x : n → 𝕜) : ℝ :=
  RCLike.re (star x ⬝ᵥ (A *ᵥ x))

/-- `W` is a subspace on which `hermForm A` is positive definite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sylvester/Varianta77dfa77523d01de3673d56f775b8c9b1a376022238744b1245b4e4db4170dcf.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e626e55ce1909069de83e287fb57423209371424` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
