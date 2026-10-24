# algebraMap_norm_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23bf9d35893133026a646aa2677f4f87dd7b1a29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f4700e1-49a8-adb7-d71b-57c1c7aeeab1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bad2ad76-6a43-e917-036e-ee739b09624a",
  "kind": "theorem",
  "lexical_name": "algebraMap_norm_eq_pow",
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
  "slug": "algebramap-norm-eq-pow--dbcc501d1ed40761338456c3",
  "source": {
    "blob": "23bf9d35893133026a646aa2677f4f87dd7b1a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 232,
    "path": "GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbcc501d1ed40761338456c31b437f1aff34ea01d7466d93e62252a7468e7754",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bad2ad76-6a43-e917-036e-ee739b09624a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem algebraMap_norm_eq_pow {x : K'} :
    algebraMap K K' (Algebra.norm K x) = x ^ ((Nat.card K' - 1) / (Nat.card K - 1)) := by
  have := Finite.of_injective _ (algebraMap K K').injective
  have := Fintype.ofFinite K
  have := Fintype.ofFinite K'
  simp_rw [← Fintype.card_eq_nat_card, Algebra.norm_eq_prod_automorphisms,
    ← (bijective_frobeniusAlgEquivOfAlgebraic_pow K K').prod_comp, AlgEquiv.coe_pow,
    coe_frobeniusAlgEquivOfAlgebraic, pow_iterate, Finset.prod_pow_eq_pow_sum,
    Fin.sum_univ_eq_sum_range, Nat.geomSum_eq Fintype.one_lt_card, ← Module.card_eq_pow_finrank]

variable (K K')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23bf9d35893133026a646aa2677f4f87dd7b1a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
