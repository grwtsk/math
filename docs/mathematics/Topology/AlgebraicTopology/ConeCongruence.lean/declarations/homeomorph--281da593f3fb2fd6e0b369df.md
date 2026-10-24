# homeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a89a893494beb5fd841da5ca67208a15a2f4307ff3698404b0ced63c296fcf95",
  "kind": "def",
  "lexical_name": "homeomorph",
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
  "slug": "homeomorph--281da593f3fb2fd6e0b369df",
  "source": {
    "blob": "6299db1e2b3848e33a2b9e0753600cdcf37ca9c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/Topology/AlgebraicTopology/ConeCongruence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:281da593f3fb2fd6e0b369dfb1dbfe9f882c6f5135443cf3e305a6b1437c3e95",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ConeCongruence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a89a893494beb5fd841da5ca67208a15a2f4307ff3698404b0ced63c296fcf95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homeomorph (h : X ≃ₜ Y) : CircleCone.Cone X ≃ₜ CircleCone.Cone Y :=
  Homeomorph.Quotient.congr (h.prodCongr (Homeomorph.refl unitInterval)) fun p q => by
    change (p = q ∨ ((p.2 : ℝ) = 0 ∧ (q.2 : ℝ) = 0)) ↔
      ((h.prodCongr (Homeomorph.refl unitInterval)) p =
          (h.prodCongr (Homeomorph.refl unitInterval)) q ∨
        ((p.2 : ℝ) = 0 ∧ (q.2 : ℝ) = 0))
    rw [(h.prodCongr (Homeomorph.refl unitInterval)).injective.eq_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/ConeCongruence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ConeCongruence.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6299db1e2b3848e33a2b9e0753600cdcf37ca9c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
