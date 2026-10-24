# reesAlgebra.monomial_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0afe5f69-d8ec-f4a6-c4dc-59bc28c76778",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d8e4c980-93d2-5ad0-c8eb-c5a738478ad2",
  "kind": "theorem",
  "lexical_name": "reesAlgebra.monomial_mem",
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
  "slug": "reesalgebra-monomial-mem--e89fd93d6d24810de1d7c9eb",
  "source": {
    "blob": "298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 76,
    "path": "GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e89fd93d6d24810de1d7c9eb6b0409c5e32313a4c71b720d9fe9877e848443a9",
  "verification": {
    "reference": "docs/verification/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8e4c980-93d2-5ad0-c8eb-c5a738478ad2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reesAlgebra.monomial_mem {I : Ideal R} {i : ℕ} {r : R} :
    monomial i r ∈ reesAlgebra I ↔ r ∈ I ^ i := by
  simp (config := { contextual := true }) [mem_reesAlgebra_iff_support, coeff_monomial, ←
    imp_iff_not_or]
#align rees_algebra.monomial_mem reesAlgebra.monomial_mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReesAlgebra/Variant2b4b6602403431e73178efd4724b64ac1b6bcef155ed58cb91e5d09c9d345c99.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `298b9f6b6dd13a87dd98e8dcfa6c568ca7b8c482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
