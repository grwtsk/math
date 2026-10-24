# finrank_intertwiningMap_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4af7c8ab-8cb4-7048-20f2-2ab4a194fb0c",
  "kind": "theorem",
  "lexical_name": "finrank_intertwiningMap_self",
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
  "slug": "finrank-intertwiningmap-self--1885d7ae574a7238093c7a24",
  "source": {
    "blob": "8f1ceb250a373db2e469300b0d5e601f53d59438",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1885d7ae574a7238093c7a24e11f3c97eb031e721ef249d64bdd9ff3cdd13f05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4af7c8ab-8cb4-7048-20f2-2ab4a194fb0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem finrank_intertwiningMap_self : Module.finrank k (IntertwiningMap ρ ρ) = 1 := by
  rw [LinearEquiv.finrank_eq (LinearEquiv.ofBijective (Algebra.linearMap k (IntertwiningMap ρ ρ))
      algebraMap_intertwiningMap_bijective_of_isAlgClosed).symm]
  exact CommSemiring.finrank_self k

open scoped IsMulCommutative in
include ρ in
variable (ρ) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f1ceb250a373db2e469300b0d5e601f53d59438` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
