# toAffineMap_linear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a852387467617e0f208a1d13993cefe2c1b89c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1d9bf1f-06cb-f464-1f80-0c49e0421d76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8901b0cc-ebb4-f03e-bb2c-7acb90e9162b",
  "kind": "theorem",
  "lexical_name": "toAffineMap_linear",
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
  "slug": "toaffinemap-linear--9ab96372ce283d6a67c5066d",
  "source": {
    "blob": "4a852387467617e0f208a1d13993cefe2c1b89c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab96372ce283d6a67c5066db5c11e3140b205291d407c7d0f8f676314c3e707",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8901b0cc-ebb4-f03e-bb2c-7acb90e9162b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toAffineMap_linear : f.toAffineMap.linear = f :=
  rfl

end LinearMap

namespace AffineMap

variable {k : Type*} {V1 : Type*} {P1 : Type*} {V2 : Type*} {P2 : Type*} {V3 : Type*}
  {P3 : Type*} {V4 : Type*} {P4 : Type*} [Ring k] [AddCommGroup V1] [Module k V1]
  [AffineSpace V1 P1] [AddCommGroup V2] [Module k V2] [AffineSpace V2 P2] [AddCommGroup V3]
  [Module k V3] [AffineSpace V3 P3] [AddCommGroup V4] [Module k V4] [AffineSpace V4 P4]

/-- Constructing an affine map and coercing back to a function
produces the same map. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a852387467617e0f208a1d13993cefe2c1b89c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
