# quotKerEquivOfSurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b277742167cbf862928decfc201bf8a612e44d43ebd8da06970d4f1281edb51",
  "kind": "def",
  "lexical_name": "quotKerEquivOfSurjective",
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
  "slug": "quotkerequivofsurjective--2187d7237d5bc762a06c9b65",
  "source": {
    "blob": "8fdded67ae0482b47390c3c115fcd32c5efd668f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2187d7237d5bc762a06c9b65811cf44a5413a4ce16017e83f5952acbe95bee99",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b277742167cbf862928decfc201bf8a612e44d43ebd8da06970d4f1281edb51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotKerEquivOfSurjective (f : M →ₗ[R] M₂) (hf : Function.Surjective f) :
    (M ⧸ LinearMap.ker f) ≃ₗ[R] M₂ :=
  f.quotKerEquivRange.trans (LinearEquiv.ofTop (LinearMap.range f) (LinearMap.range_eq_top.2 hf))
#align linear_map.quot_ker_equiv_of_surjective LinearMap.quotKerEquivOfSurjective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Isomorphisms/Variant93bec431533bc1767117e22a51cb4222ef224dec7483d4c96818a10f43f4b8cd.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fdded67ae0482b47390c3c115fcd32c5efd668f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
