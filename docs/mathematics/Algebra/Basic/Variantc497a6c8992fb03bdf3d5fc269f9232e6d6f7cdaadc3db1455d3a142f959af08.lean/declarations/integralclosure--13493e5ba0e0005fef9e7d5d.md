# integralClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a46f2ce0ae8bf5a6878511f255e897440771c581a19f32de3208c5ef83b6b829",
  "kind": "def",
  "lexical_name": "integralClosure",
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
  "slug": "integralclosure--13493e5ba0e0005fef9e7d5d",
  "source": {
    "blob": "d48d7f6ca96bdee4f2cb908eec2f30baee439c4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 211,
    "path": "GRWTSK/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:13493e5ba0e0005fef9e7d5d91d5b992d56ff1db91251cbdb1ec810f1ee9d4d5",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a46f2ce0ae8bf5a6878511f255e897440771c581a19f32de3208c5ef83b6b829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def integralClosure : Subalgebra R A where
  carrier := { r | IsIntegral R r }
  zero_mem' := isIntegral_zero
  one_mem' := isIntegral_one
  add_mem' := IsIntegral.add
  mul_mem' := IsIntegral.mul
  algebraMap_mem' _ := isIntegral_algebraMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc497a6c8992fb03bdf3d5fc269f9232e6d6f7cdaadc3db1455d3a142f959af08.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48d7f6ca96bdee4f2cb908eec2f30baee439c4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
