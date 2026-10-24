# mem_carrier_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61acefe9-aca6-7a9f-063f-17bdf6ec89b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bff74c3d-3fed-8f44-0de7-c0f81a337c2c",
  "kind": "theorem",
  "lexical_name": "mem_carrier_iff",
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
  "slug": "mem-carrier-iff--177fd6179f0062b006dd44cc",
  "source": {
    "blob": "4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 279,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:177fd6179f0062b006dd44ccfcf8e326a5878d6a08dbec976a6017a0e5623757",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bff74c3d-3fed-8f44-0de7-c0f81a337c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_carrier_iff (q : Spec.T A⁰_ f) (a : A) :
    a ∈ carrier f_deg q ↔ ∀ i, (HomogeneousLocalization.mk ⟨m * i, ⟨proj 𝒜 i a ^ m, by
      rw [← smul_eq_mul]; mem_tac⟩,
      ⟨f ^ i, by rw [mul_comm]; mem_tac⟩, ⟨_, rfl⟩⟩ : A⁰_ f) ∈ q.1 :=
  Iff.rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant2860dced5bf422814f5fa796c9fbcd12aeff8e3b2db24feb1377b1d94a563225.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4844fe9648a2d1a3314b2ba93dfd6d04c0d1eb92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
