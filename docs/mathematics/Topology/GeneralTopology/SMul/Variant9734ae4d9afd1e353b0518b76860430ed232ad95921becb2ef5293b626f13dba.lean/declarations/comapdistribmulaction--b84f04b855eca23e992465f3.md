# comapDistribMulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e4f7d2a53333f5a66b34577b0a1a0226f8859dab04356f473751d4bb82a14d8",
  "kind": "def",
  "lexical_name": "comapDistribMulAction",
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
  "slug": "comapdistribmulaction--b84f04b855eca23e992465f3",
  "source": {
    "blob": "7a88af13b51552d0862c17bd6a8c95ead968d047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b84f04b855eca23e992465f3dd87e9d660aa7e37738f77a6b39f4cb84f7a608f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e4f7d2a53333f5a66b34577b0a1a0226f8859dab04356f473751d4bb82a14d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comapDistribMulAction : DistribMulAction G (α →₀ M) where
  smul_zero g := by
    ext a
    simp only [comapSMul_def]
    simp
  smul_add g f f' := by
    ext
    simp only [comapSMul_def]
    simp [mapDomain_add]

end

section

variable [Group G] [MulAction G α] [AddCommMonoid M]

attribute [local instance] comapSMul comapMulAction comapDistribMulAction

/-- When `G` is a group, `Finsupp.comapSMul` acts by precomposition with the action of `g⁻¹`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SMul/Variant9734ae4d9afd1e353b0518b76860430ed232ad95921becb2ef5293b626f13dba.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a88af13b51552d0862c17bd6a8c95ead968d047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
