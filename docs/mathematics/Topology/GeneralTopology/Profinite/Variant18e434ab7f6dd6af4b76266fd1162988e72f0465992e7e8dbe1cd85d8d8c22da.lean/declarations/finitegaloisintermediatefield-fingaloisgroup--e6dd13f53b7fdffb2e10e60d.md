# FiniteGaloisIntermediateField.finGaloisGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:744d3ed643feb5489e9655551840a263e8a00a2aed1f6a814aabad61314f3cf0",
  "kind": "def",
  "lexical_name": "FiniteGaloisIntermediateField.finGaloisGroup",
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
  "slug": "finitegaloisintermediatefield-fingaloisgroup--e6dd13f53b7fdffb2e10e60d",
  "source": {
    "blob": "20dad200a3109fc423a577894f4fa5b00d2951ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 71,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6dd13f53b7fdffb2e10e60d762c15c4294228118863a728b58c82a014e40c65",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:744d3ed643feb5489e9655551840a263e8a00a2aed1f6a814aabad61314f3cf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteGaloisIntermediateField.finGaloisGroup (L : FiniteGaloisIntermediateField k K) :
    FiniteGrp :=
  letI := AlgEquiv.fintype k L
  FiniteGrp.of <| L ≃ₐ[k] L

/-- For `FiniteGaloisIntermediateField` s `L₁` and `L₂` with `L₂ ≤ L₁`
  the restriction homomorphism from `Gal(L₁/k)` to `Gal(L₂/k)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant18e434ab7f6dd6af4b76266fd1162988e72f0465992e7e8dbe1cd85d8d8c22da.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20dad200a3109fc423a577894f4fa5b00d2951ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
