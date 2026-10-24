# orientation_reindex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6061d257-b8eb-4aa3-ae87-5d113c93bbde",
  "kind": "theorem",
  "lexical_name": "orientation_reindex",
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
  "slug": "orientation-reindex--aa9f250e2ec86c8d72e1079b",
  "source": {
    "blob": "64cef56dccaa3094d43526dde7be597ce430b48f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 179,
    "path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa9f250e2ec86c8d72e1079b8fd985ad27b3a96b61b5f152bc909d162bc36f45",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6061d257-b8eb-4aa3-ae87-5d113c93bbde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orientation_reindex (e : Basis ι R M) (eι : ι ≃ ι') :
    (e.reindex eι).orientation = Orientation.reindex R M eι e.orientation := by
  simp_rw [Basis.orientation, Orientation.reindex_apply, Basis.det_reindex']

/-- The orientation given by a basis derived using `units_smul`, in terms of the product of those
units. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Orientation/Variant9d1047d30ae182d498f0f25d452382835b0bcc9710e1213fbca848b836a89dd0.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64cef56dccaa3094d43526dde7be597ce430b48f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
