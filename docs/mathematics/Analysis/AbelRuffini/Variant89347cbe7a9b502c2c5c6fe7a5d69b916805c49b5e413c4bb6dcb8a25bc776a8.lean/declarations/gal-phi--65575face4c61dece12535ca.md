# gal_Phi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b9619baeddd3f39e13ae4f4c2a59a18328d74c5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89347cbe7a9b502c2c5c6fe7a5d69b916805c49b5e413c4bb6dcb8a25bc776a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5fd5e13d-2fab-1719-b2f5-8e509f446758",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1e32a7c-3680-21ad-12cc-215f17e4408a",
  "kind": "theorem",
  "lexical_name": "gal_Phi",
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
  "slug": "gal-phi--65575face4c61dece12535ca",
  "source": {
    "blob": "b9619baeddd3f39e13ae4f4c2a59a18328d74c5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 148,
    "path": "GRWTSK/Analysis/AbelRuffini/Variant89347cbe7a9b502c2c5c6fe7a5d69b916805c49b5e413c4bb6dcb8a25bc776a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65575face4c61dece12535ca68c4ff0f1f2b6bf7d803b2e3f32b4506ec523e07",
  "verification": {
    "reference": "docs/verification/Analysis/AbelRuffini/Variant89347cbe7a9b502c2c5c6fe7a5d69b916805c49b5e413c4bb6dcb8a25bc776a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e32a7c-3680-21ad-12cc-215f17e4408a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gal_Phi (hab : b < a) (h_irred : Irreducible (Φ ℚ a b)) :
    Bijective (galActionHom (Φ ℚ a b) ℂ) := by
  apply galActionHom_bijective_of_prime_degree' h_irred
  · simp only [natDegree_Phi]; decide
  · rw [complex_roots_Phi a b h_irred.separable, Nat.succ_le_succ_iff]
    exact (real_roots_Phi_le a b).trans (Nat.le_succ 3)
  · simp_rw [complex_roots_Phi a b h_irred.separable, Nat.succ_le_succ_iff]
    exact real_roots_Phi_ge a b hab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AbelRuffini/Variant89347cbe7a9b502c2c5c6fe7a5d69b916805c49b5e413c4bb6dcb8a25bc776a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AbelRuffini/Variant89347cbe7a9b502c2c5c6fe7a5d69b916805c49b5e413c4bb6dcb8a25bc776a8.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9619baeddd3f39e13ae4f4c2a59a18328d74c5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
