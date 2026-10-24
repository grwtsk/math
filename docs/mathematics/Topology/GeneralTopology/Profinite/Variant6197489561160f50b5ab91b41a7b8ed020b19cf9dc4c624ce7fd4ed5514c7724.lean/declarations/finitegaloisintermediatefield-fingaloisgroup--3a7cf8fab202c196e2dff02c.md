# FiniteGaloisIntermediateField.finGaloisGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d17f1888f6b8677d38670c0d001e459b814c863ebfa10cbe104800189f744083",
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
  "slug": "finitegaloisintermediatefield-fingaloisgroup--3a7cf8fab202c196e2dff02c",
  "source": {
    "blob": "13f49e52e51793b55bd28c7d503ad6e1eca5b9a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a7cf8fab202c196e2dff02c7eac0c779fcea0397718ca50895668386538c677",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d17f1888f6b8677d38670c0d001e459b814c863ebfa10cbe104800189f744083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FiniteGaloisIntermediateField.finGaloisGroup (L : FiniteGaloisIntermediateField k K) :
    FiniteGrp :=
  letI := AlgEquiv.fintype k L
  ↧Gal(L/k)

/-- For `FiniteGaloisIntermediateField` s `L₁` and `L₂` with `L₂ ≤ L₁`
  the restriction homomorphism from `Gal(L₁/k)` to `Gal(L₂/k)` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13f49e52e51793b55bd28c7d503ad6e1eca5b9a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
