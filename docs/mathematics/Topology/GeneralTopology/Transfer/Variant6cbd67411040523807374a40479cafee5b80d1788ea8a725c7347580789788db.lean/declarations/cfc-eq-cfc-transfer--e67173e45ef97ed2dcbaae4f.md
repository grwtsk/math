# cfcₙ_eq_cfcₙ_transfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01e0fc478fb9b1b918f142d22a9f7227b1dfa154",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4feb28c9-57c0-66ea-ac58-8097f035db4f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f222390-3003-bd5a-42da-007a41b6ab48",
  "kind": "lemma",
  "lexical_name": "cfcₙ_eq_cfcₙ_transfer",
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
  "slug": "cfc-eq-cfc-transfer--e67173e45ef97ed2dcbaae4f",
  "source": {
    "blob": "01e0fc478fb9b1b918f142d22a9f7227b1dfa154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67173e45ef97ed2dcbaae4f9da209b4c56fb91b387064e66560c97faf322481",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f222390-3003-bd5a-42da-007a41b6ab48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cfcₙ_eq_cfcₙ_transfer [NonUnitalContinuousFunctionalCalculus R B q]
    [ContinuousMapZero.UniqueHom R B] (e : A ≃⋆ₐ[R] B) (he : Continuous e)
    (hpq : ∀ x, p x ↔ q (e x)) (f : R → R) (b : B) :
    cfcₙ f b = e (cfcₙ f (e.symm b)) := by
  obtain (⟨hb, hf, hf0⟩ | hb | hf | hf0) :
      (q b ∧ ContinuousOn f (quasispectrum R b) ∧ f 0 = 0) ∨
        ¬ q b ∨ ¬ ContinuousOn f (quasispectrum R b) ∨ ¬ f 0 = 0 := by
    tauto
  · have ha : p (e.symm b) := by simpa [hpq]
    have hf' : ContinuousOn f (quasispectrum R (e.symm b)) := by rwa [AlgEquiv.quasispectrum_eq]
    rw [cfcₙ_apply f b, cfcₙHom_eq_cfcₙHomTransfer e he hpq b hb, cfcₙ_apply f (e.symm b)]
    congr!
  · rw [cfcₙ_apply_of_not_predicate b hb, cfcₙ_apply_of_not_predicate (e.symm b) (by simpa [hpq]),
      map_zero e]
  · rw [cfcₙ_apply_of_not_continuousOn b hf,
      cfcₙ_apply_of_not_continuousOn (e.symm b) (by simpa [AlgEquiv.quasispectrum_eq] using hf),
      map_zero e]
  · rw [cfcₙ_apply_of_not_map_zero _ hf0, cfcₙ_apply_of_not_map_zero _ hf0, map_zero e]

end NonUnitalTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Transfer/Variant6cbd67411040523807374a40479cafee5b80d1788ea8a725c7347580789788db.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01e0fc478fb9b1b918f142d22a9f7227b1dfa154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
