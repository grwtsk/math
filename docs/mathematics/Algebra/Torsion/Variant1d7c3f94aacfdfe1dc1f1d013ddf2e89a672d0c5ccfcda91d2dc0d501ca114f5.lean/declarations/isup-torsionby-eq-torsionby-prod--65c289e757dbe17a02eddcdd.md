# iSup_torsionBy_eq_torsionBy_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d35e8891b58df9ba9064872f734020449e518115",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 431,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3be82e21-ecd7-c96a-7ae3-efda844574a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af552b12-e01e-f55b-c1c2-639610665b01",
  "kind": "theorem",
  "lexical_name": "iSup_torsionBy_eq_torsionBy_prod",
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
  "slug": "isup-torsionby-eq-torsionby-prod--65c289e757dbe17a02eddcdd",
  "source": {
    "blob": "d35e8891b58df9ba9064872f734020449e518115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 431,
    "path": "GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65c289e757dbe17a02eddcdd17f4d12116ec8f35722dce45d1d57da2cafa1c26",
  "verification": {
    "reference": "docs/verification/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af552b12-e01e-f55b-c1c2-639610665b01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 431–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_torsionBy_eq_torsionBy_prod (hq : (S : Set ι).Pairwise <| (IsCoprime on q)) :
    ⨆ i ∈ S, torsionBy R M (q i) = torsionBy R M (∏ i ∈ S, q i) := by
  rw [← torsionBySet_span_singleton_eq, Ideal.submodule_span_eq, ←
    Ideal.finset_inf_span_singleton _ _ hq, Finset.inf_eq_iInf, ←
    iSup_torsionBySet_ideal_eq_torsionBySet_iInf]
  · congr
    ext : 1
    congr
    ext : 1
    exact (torsionBySet_span_singleton_eq _).symm
  exact fun i hi j hj ij => (Ideal.sup_eq_top_iff_isCoprime _ _).mpr (hq hi hj ij)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Torsion/Variant1d7c3f94aacfdfe1dc1f1d013ddf2e89a672d0c5ccfcda91d2dc0d501ca114f5.lean#L431).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d35e8891b58df9ba9064872f734020449e518115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
