# Γevaluation_ne_zero_iff_mem_basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe72d7723e991571d9b597d35428952e598fa182",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:798751c1-fbcf-a2c5-1202-ae3956ece263",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a867ba1-08c2-5d41-2d77-10c6f8ffc5ca",
  "kind": "lemma",
  "lexical_name": "Γevaluation_ne_zero_iff_mem_basicOpen",
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
  "slug": "evaluation-ne-zero-iff-mem-basicopen--7f58b5da6f20a8e7e8fa536f",
  "source": {
    "blob": "fe72d7723e991571d9b597d35428952e598fa182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 96,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f58b5da6f20a8e7e8fa536f605860aae199290095e423683eb00b779ef4e3eb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a867ba1-08c2-5d41-2d77-10c6f8ffc5ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Γevaluation_ne_zero_iff_mem_basicOpen (x : X) (f : X.presheaf.obj (op ⊤)) :
    X.Γevaluation x f ≠ 0 ↔ x ∈ X.toRingedSpace.basicOpen f :=
  evaluation_ne_zero_iff_mem_basicOpen X ⟨x, show x ∈ ⊤ by trivial⟩ f

variable {X Y : LocallyRingedSpace.{u}} (f : X ⟶ Y) (x : X)

/-- If `X ⟶ Y` is a morphism of locally ringed spaces and `x` a point of `X`, we obtain
a morphism of residue fields in the other direction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe72d7723e991571d9b597d35428952e598fa182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
