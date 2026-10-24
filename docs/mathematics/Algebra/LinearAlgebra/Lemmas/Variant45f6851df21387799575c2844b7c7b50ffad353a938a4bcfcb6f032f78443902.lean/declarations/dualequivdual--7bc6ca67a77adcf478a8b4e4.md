# dualEquivDual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e26b4ba270d1206c9d7d78f4b668c24ca847f698b5ca81e2be50b8411d719d4",
  "kind": "def",
  "lexical_name": "dualEquivDual",
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
  "slug": "dualequivdual--7bc6ca67a77adcf478a8b4e4",
  "source": {
    "blob": "43c8ac3a5381b0ca3a8867b8d24c407d5a34a379",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 531,
    "line": 528,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bc6ca67a77adcf478a8b4e4daff90fff56901e10337d124e7812f185905cf7c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e26b4ba270d1206c9d7d78f4b668c24ca847f698b5ca81e2be50b8411d719d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def dualEquivDual (W : Subspace K V) :
    Module.Dual K W ≃ₗ[K] LinearMap.range W.dualLift :=
  LinearEquiv.ofInjective _ dualLift_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant45f6851df21387799575c2844b7c7b50ffad353a938a4bcfcb6f032f78443902.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43c8ac3a5381b0ca3a8867b8d24c407d5a34a379` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
