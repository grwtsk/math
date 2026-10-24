# compAlternatingMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:765591b5b12af53fd551f8080a2381c252f39303d5de9e70d41e2ccaacc6403b",
  "kind": "def",
  "lexical_name": "compAlternatingMap",
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
  "slug": "compalternatingmap--2a375e31b4b36a5308459387",
  "source": {
    "blob": "d780d5b635d1fd67534bb14918eb59c920a02ea2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 430,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant05bf7c77430f3965468791ae805b0d1e3de5c6883a05a959ed8b4ad0b9baf55e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a375e31b4b36a5308459387c120552275df34f243ab0b7d9dd05b3b7bf1dfb0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant05bf7c77430f3965468791ae805b0d1e3de5c6883a05a959ed8b4ad0b9baf55e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:765591b5b12af53fd551f8080a2381c252f39303d5de9e70d41e2ccaacc6403b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compAlternatingMap (g : N →ₗ[R] N₂) (f : M [⋀^ι]→ₗ[R] N) : M [⋀^ι]→ₗ[R] N₂ where
  __ := g.compMultilinearMap (f : MultilinearMap R (fun _ : ι => M) N)
  map_eq_zero_of_eq' v i j h hij := by simp [f.map_eq_zero_of_eq v h hij]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant05bf7c77430f3965468791ae805b0d1e3de5c6883a05a959ed8b4ad0b9baf55e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant05bf7c77430f3965468791ae805b0d1e3de5c6883a05a959ed8b4ad0b9baf55e.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d780d5b635d1fd67534bb14918eb59c920a02ea2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
