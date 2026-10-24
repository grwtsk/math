# Unitization.complex_cfcₙ_eq_cfc_inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1001146af344d68d222246d018a5927cdfc2326",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 453,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d9cad594-41b8-ad53-f03a-c3b51b422c67",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc4a4190-ef4c-f5f2-5292-bc33916dc2f1",
  "kind": "lemma",
  "lexical_name": "Unitization.complex_cfcₙ_eq_cfc_inr",
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
  "slug": "unitization-complex-cfc-eq-cfc-inr--407fd35721b1bd1586a4fafe",
  "source": {
    "blob": "f1001146af344d68d222246d018a5927cdfc2326",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 453,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:407fd35721b1bd1586a4fafe016cd52f08c5704d5fc9a06a091c46b5b4d8a130",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc4a4190-ef4c-f5f2-5292-bc33916dc2f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Unitization.complex_cfcₙ_eq_cfc_inr (a : A) (f : ℂ → ℂ) (hf₀ : f 0 = 0 := by cfc_zero_tac) :
    cfcₙ f a = cfc f (a : A⁺¹) :=
  Unitization.cfcₙ_eq_cfc_inr isStarNormal_inr ..

/-- note: the version for `ℝ≥0`, `Unization.nnreal_cfcₙ_eq_cfc_inr`, can be found in
`Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant71e404180af5ae9fda6b7a2f4c47a487fbeedee83994b262d46fd6f5bf34f899.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1001146af344d68d222246d018a5927cdfc2326` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
