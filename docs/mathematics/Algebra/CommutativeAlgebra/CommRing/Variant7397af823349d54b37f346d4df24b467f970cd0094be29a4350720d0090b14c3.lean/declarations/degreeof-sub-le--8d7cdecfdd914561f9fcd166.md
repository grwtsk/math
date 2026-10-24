# degreeOf_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1c7315d-be40-282c-26ed-2d4dd7bb0d11",
  "kind": "theorem",
  "lexical_name": "degreeOf_sub_le",
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
  "slug": "degreeof-sub-le--8d7cdecfdd914561f9fcd166",
  "source": {
    "blob": "bc525ab5da5f830d4448836e1202666a864afad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 140,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variant7397af823349d54b37f346d4df24b467f970cd0094be29a4350720d0090b14c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d7cdecfdd914561f9fcd166aa94c9a39b24a81c60a546d6520e3c31bbfb0084",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/CommRing/Variant7397af823349d54b37f346d4df24b467f970cd0094be29a4350720d0090b14c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1c7315d-be40-282c-26ed-2d4dd7bb0d11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degreeOf_sub_le (i : σ) (p q : MvPolynomial σ R) :
    degreeOf i (p - q) ≤ max (degreeOf i p) (degreeOf i q) := by
  simpa only [sub_eq_add_neg, degreeOf_neg] using degreeOf_add_le i p (-q)

end Degrees

section Vars

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/CommRing/Variant7397af823349d54b37f346d4df24b467f970cd0094be29a4350720d0090b14c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/CommRing/Variant7397af823349d54b37f346d4df24b467f970cd0094be29a4350720d0090b14c3.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc525ab5da5f830d4448836e1202666a864afad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
