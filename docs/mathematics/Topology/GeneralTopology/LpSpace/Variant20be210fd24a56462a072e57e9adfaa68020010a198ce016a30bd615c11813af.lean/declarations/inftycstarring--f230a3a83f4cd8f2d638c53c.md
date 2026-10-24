# inftyCStarRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cda687fda12e102bddfd7a811817ea0200e97673d5e8507974821983f0350aee",
  "kind": "instance",
  "lexical_name": "inftyCStarRing",
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
  "slug": "inftycstarring--f230a3a83f4cd8f2d638c53c",
  "source": {
    "blob": "e6044dc601f11378f230b50769e12d5fe83f07f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 894,
    "path": "GRWTSK/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f230a3a83f4cd8f2d638c53c13c7392d18958d849a3b8d2c488e6d9538f6f209",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cda687fda12e102bddfd7a811817ea0200e97673d5e8507974821983f0350aee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance inftyCStarRing [∀ i, CStarRing (B i)] : CStarRing (lp B ∞) where
  norm_mul_self_le f := by
    rw [← sq, ← Real.le_sqrt (norm_nonneg _) (norm_nonneg _)]
    refine lp.norm_le_of_forall_le ‖star f * f‖.sqrt_nonneg fun i => ?_
    rw [Real.le_sqrt (norm_nonneg _) (norm_nonneg _), sq, ← CStarRing.norm_star_mul_self]
    exact lp.norm_apply_le_norm ENNReal.top_ne_zero (star f * f) i

end StarRing

end NonUnitalNormedRing

section NormedRing

variable {I : Type*} {B : I → Type*} [∀ i, NormedRing (B i)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LpSpace/Variant20be210fd24a56462a072e57e9adfaa68020010a198ce016a30bd615c11813af.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6044dc601f11378f230b50769e12d5fe83f07f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
