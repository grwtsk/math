# contractLeft_mul_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cdba6d5-9a3d-39f5-b41e-f0b2f0632cb7",
  "kind": "theorem",
  "lexical_name": "contractLeft_mul_algebraMap",
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
  "slug": "contractleft-mul-algebramap--0ede94157f515809389539ff",
  "source": {
    "blob": "b7124df1bb575a257c67b24294ca91a4d3242a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 158,
    "path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ede94157f515809389539ffa0f06ff0646592db068a719979c4d709a26d7e5a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cdba6d5-9a3d-39f5-b41e-f0b2f0632cb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contractLeft_mul_algebraMap (a : CliffordAlgebra Q) (r : R) :
    d⌋(a * algebraMap _ _ r) = d⌋a * algebraMap _ _ r := by
  rw [← Algebra.commutes, contractLeft_algebraMap_mul, Algebra.commutes, Algebra.commutes]
#align clifford_algebra.contract_left_mul_algebra_map CliffordAlgebra.contractLeft_mul_algebraMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7124df1bb575a257c67b24294ca91a4d3242a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
