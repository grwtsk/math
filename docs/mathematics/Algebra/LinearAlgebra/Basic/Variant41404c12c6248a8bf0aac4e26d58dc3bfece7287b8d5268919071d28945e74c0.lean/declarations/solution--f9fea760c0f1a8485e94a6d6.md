# Solution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b9b0797c79eaf1f685a7f14b834f2b23888b3c5d985b6a0e2ae21602890a932",
  "kind": "structure",
  "lexical_name": "Solution",
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
  "slug": "solution--f9fea760c0f1a8485e94a6d6",
  "source": {
    "blob": "11a177692bdb3b3f9b1d21ddf8bbe8273772b402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9fea760c0f1a8485e94a6d652829f49d7cf1386d0a2664745c7d68b2f204d1a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b9b0797c79eaf1f685a7f14b834f2b23888b3c5d985b6a0e2ae21602890a932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Solution where
  /-- the image in `M` of each variable -/
  var (g : relations.G) : M
  linearCombination_var_relation (r : relations.R) :
    Finsupp.linearCombination _ var (relations.relation r) = 0

namespace Solution

variable {relations M}

section

variable (solution : relations.Solution M)

/-- Given `relations : Relations A` and a solution in `relations.Solution M`, this is
the linear map `(relations.G →₀ A) →ₗ[A] M` canonically associated to the solution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant41404c12c6248a8bf0aac4e26d58dc3bfece7287b8d5268919071d28945e74c0.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a177692bdb3b3f9b1d21ddf8bbe8273772b402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
