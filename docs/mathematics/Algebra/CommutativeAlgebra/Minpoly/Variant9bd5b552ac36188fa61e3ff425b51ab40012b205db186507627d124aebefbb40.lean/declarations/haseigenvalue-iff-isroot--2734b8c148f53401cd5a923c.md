# hasEigenvalue_iff_isRoot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6bc9519-8b28-be15-2a2a-eb4c39d3bcc1",
  "kind": "theorem",
  "lexical_name": "hasEigenvalue_iff_isRoot",
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
  "slug": "haseigenvalue-iff-isroot--2734b8c148f53401cd5a923c",
  "source": {
    "blob": "c9aa8a9b7bcb6f2a36c81656020444860f01b335",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 103,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2734b8c148f53401cd5a923c86496c90b17af18964c312e8d23894f4aabb65c8",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6bc9519-8b28-be15-2a2a-eb4c39d3bcc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasEigenvalue_iff_isRoot : f.HasEigenvalue μ ↔ (minpoly K f).IsRoot μ :=
  ⟨isRoot_of_hasEigenvalue, hasEigenvalue_of_isRoot⟩
#align module.End.has_eigenvalue_iff_is_root Module.End.hasEigenvalue_iff_isRoot

/-- An endomorphism of a finite-dimensional vector space has finitely many eigenvalues. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant9bd5b552ac36188fa61e3ff425b51ab40012b205db186507627d124aebefbb40.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9aa8a9b7bcb6f2a36c81656020444860f01b335` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
