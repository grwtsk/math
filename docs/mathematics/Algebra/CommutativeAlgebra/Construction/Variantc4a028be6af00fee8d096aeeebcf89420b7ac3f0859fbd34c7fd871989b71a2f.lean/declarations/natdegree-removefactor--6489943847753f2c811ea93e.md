# natDegree_removeFactor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:164cf07e-962e-186e-7241-07ed842b33a7",
  "kind": "theorem",
  "lexical_name": "natDegree_removeFactor'",
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
  "slug": "natdegree-removefactor--6489943847753f2c811ea93e",
  "source": {
    "blob": "472d9e1b12f1704d028c8a725cac477be5728c80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 108,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6489943847753f2c811ea93e47d73880b3fef03adf3b44304c3d74a92ac31a0f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:164cf07e-962e-186e-7241-07ed842b33a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_removeFactor' {f : K[X]} {n : ℕ} (hfn : f.natDegree = n + 1) :
    f.removeFactor.natDegree = n := by rw [natDegree_removeFactor, hfn, n.add_sub_cancel]

/-- Auxiliary construction to a splitting field of a polynomial, which removes
`n` (arbitrarily-chosen) factors.

It constructs the type, proves that is a field and algebra over the base field.

Uses recursion on the degree.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Construction/Variantc4a028be6af00fee8d096aeeebcf89420b7ac3f0859fbd34c7fd871989b71a2f.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `472d9e1b12f1704d028c8a725cac477be5728c80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
