# toENNRealRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbb7aa8c7c27245319ff0f87bfeeadab382445dc17a773b62bcd2688fdec7a50",
  "kind": "def",
  "lexical_name": "toENNRealRingHom",
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
  "slug": "toennrealringhom--479257ae5112f7d1185a8e8f",
  "source": {
    "blob": "35a644aef847680dc254bb4987c531fd82190214",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:479257ae5112f7d1185a8e8ff4b73203c67595b9256c631ec12fa3a49a7a2039",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbb7aa8c7c27245319ff0f87bfeeadab382445dc17a773b62bcd2688fdec7a50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toENNRealRingHom : ℕ∞ →+* ℝ≥0∞ :=
  .withTopMap (Nat.castRingHom ℝ≥0) Nat.cast_injective
#align enat.to_ennreal_ring_hom ENat.toENNRealRingHom

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ENatENNReal/Variant890e02b21884d0ad10ca21fc26af03735f0ba1381b6be7a01352cd13de448467.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35a644aef847680dc254bb4987c531fd82190214` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
