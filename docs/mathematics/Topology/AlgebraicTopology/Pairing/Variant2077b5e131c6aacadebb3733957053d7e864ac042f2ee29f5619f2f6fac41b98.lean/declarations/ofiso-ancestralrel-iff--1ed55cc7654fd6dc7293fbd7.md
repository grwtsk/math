# ofIso_ancestralRel_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f32e34a5-7b2d-ed05-3265-4ee409dbb31a",
  "kind": "lemma",
  "lexical_name": "ofIso_ancestralRel_iff",
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
  "slug": "ofiso-ancestralrel-iff--1ed55cc7654fd6dc7293fbd7",
  "source": {
    "blob": "66dc4558dbe63eb19edd983e4fbedca7371eb7df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 182,
    "path": "GRWTSK/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ed55cc7654fd6dc7293fbd7756f904a34e28601ea5471c180cab7d0424945b8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f32e34a5-7b2d-ed05-3265-4ee409dbb31a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ofIso_ancestralRel_iff (x y : P.II) :
    (P.ofIso e hA).AncestralRel
      ⟨(Subcomplex.N.orderIsoOfIso e hA).symm x, by simp⟩
      ⟨(Subcomplex.N.orderIsoOfIso e hA).symm y, by simp⟩ ↔
    P.AncestralRel x y :=
  and_congr (not_congr (by aesop)) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Pairing/Variant2077b5e131c6aacadebb3733957053d7e864ac042f2ee29f5619f2f6fac41b98.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66dc4558dbe63eb19edd983e4fbedca7371eb7df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
