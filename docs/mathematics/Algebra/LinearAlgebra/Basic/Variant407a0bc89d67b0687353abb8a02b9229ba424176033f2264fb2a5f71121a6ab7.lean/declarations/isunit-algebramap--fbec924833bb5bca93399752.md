# isUnit_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76c695f2-ca53-8da0-dfee-5b2f87e4ec97",
  "kind": "theorem",
  "lexical_name": "isUnit_algebraMap",
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
  "slug": "isunit-algebramap--fbec924833bb5bca93399752",
  "source": {
    "blob": "a32f805ea3ed5128a47269fbf1553f25d265b806",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbec924833bb5bca93399752df569c57bfec1d9d35b3ae5a65e655270d3cde51",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76c695f2-ca53-8da0-dfee-5b2f87e4ec97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_algebraMap (r : R) : IsUnit (algebraMap R (ExteriorAlgebra R M) r) ↔ IsUnit r :=
  isUnit_map_of_leftInverse _ (algebraMap_leftInverse M)
#align exterior_algebra.is_unit_algebra_map ExteriorAlgebra.isUnit_algebraMap

/-- Invertibility in the exterior algebra is the same as invertibility of the base ring. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant407a0bc89d67b0687353abb8a02b9229ba424176033f2264fb2a5f71121a6ab7.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a32f805ea3ed5128a47269fbf1553f25d265b806` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
