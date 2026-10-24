# cartan_eq_lieSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5d6741e842c374db062571fb8ee2eb4b34ce935",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a3c280b-6a6c-563c-a568-985b2d0fb557",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:69fc7e0e-cb56-88c8-63c1-c13572386c08",
  "kind": "lemma",
  "lexical_name": "cartan_eq_lieSpan",
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
  "slug": "cartan-eq-liespan--f419ec12f61a887f0a418ae1",
  "source": {
    "blob": "a5d6741e842c374db062571fb8ee2eb4b34ce935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 134,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f419ec12f61a887f0a418ae121231b5f063c2fdc5ad07393d9cd0744c436f219",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:69fc7e0e-cb56-88c8-63c1-c13572386c08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma cartan_eq_lieSpan [IsKilling K L] (b : (rootSystem H).Base) :
    H = lieSpan K L (range fun i : b.support ↦ (rootSystem H).coroot i) := by
    suffices lieSpan K H (range fun i : b.support ↦ (rootSystem H).coroot i) = ⊤ by
      refine le_antisymm ?_ ?_
      · rwa [← H.comap_lieSpan_range_eq, comap_incl_eq_top] at this
      · simp_rw [lieSpan_le, Set.range_subset_iff, Subtype.coe_prop, implies_true]
    simp_rw [← RootPairing.Base.toCoweightBasis_apply, ← LieSubalgebra.toSubmodule_inj,
      top_toSubmodule, eq_top_iff, ← b.toCoweightBasis.span_eq]
    exact submodule_span_le_lieSpan

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant253c61ce5ddb53dc511aaac16ec0b1f21133dc1d1185b3c51fded9512255d7ca.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d6741e842c374db062571fb8ee2eb4b34ce935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
