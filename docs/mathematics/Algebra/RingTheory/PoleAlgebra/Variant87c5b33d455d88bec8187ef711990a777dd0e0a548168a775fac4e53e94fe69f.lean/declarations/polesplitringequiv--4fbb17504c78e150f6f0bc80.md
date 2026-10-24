# poleSplitRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6967c9ca3fc80b02f06b1fc1bd10e354d39eecc2bc4f8ec95833e32ba9922d44",
  "kind": "def",
  "lexical_name": "poleSplitRingEquiv",
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
  "slug": "polesplitringequiv--4fbb17504c78e150f6f0bc80",
  "source": {
    "blob": "db268f85f1f613fa368117b5982239e216f876b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 291,
    "path": "GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fbb17504c78e150f6f0bc808f1a83234376e3310e6e664f0f06ad2855531942",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6967c9ca3fc80b02f06b1fc1bd10e354d39eecc2bc4f8ec95833e32ba9922d44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def poleSplitRingEquiv : PoleOperatorAlgebra ≃+*
    ShiftedPoleFiber (1 / 2) × ShiftedPoleFiber (-1 / 2) :=
  (Ideal.quotEquivOfEq pole_polynomial_span_eq_local_product).trans
    (Ideal.quotientMulEquivQuotientProd positivePoleIdeal negativePoleIdeal
      pole_local_ideals_coprime)

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db268f85f1f613fa368117b5982239e216f876b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
