# IsEtaleAt.exists_isStandardEtale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 376,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea0cc79c-a75e-eb86-3554-a85683a224e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d5c94d4-0170-d3e5-2929-7f52434c7dca",
  "kind": "lemma",
  "lexical_name": "IsEtaleAt.exists_isStandardEtale",
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
  "slug": "isetaleat-exists-isstandardetale--040f8e7b43af897b145ff6c2",
  "source": {
    "blob": "23645208852af6a0e4e19a02e3362c0f4ce16053",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 376,
    "path": "GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:040f8e7b43af897b145ff6c25ceb88bd7c6bd1b3a6e906df10e15a42bb18c74b",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d5c94d4-0170-d3e5-2929-7f52434c7dca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsEtaleAt.exists_isStandardEtale
    (Q : Ideal S) [Q.IsPrime] [FinitePresentation R S] [IsEtaleAt R Q] :
    ∃ f, f ∉ Q ∧ IsStandardEtale R (Localization.Away f) := by
  obtain ⟨f, hfQ, h⟩ := exists_etale_of_isEtaleAt (R := R) Q
  obtain ⟨g, hgQ, hg⟩ := IsUnramifiedAt.exists_hasStandardEtaleSurjectionOn (R := R) Q
  have : Etale R (Localization.Away (f * g)) := by
    rw [← basicOpen_subset_etaleLocus_iff_etale] at h ⊢
    exact .trans (PrimeSpectrum.basicOpen_mul_le_left _ _) h
  exact ⟨f * g, ‹Q.IsPrime›.mul_notMem hfQ hgQ, (hg.of_dvd (by simp)).isStandardEtale⟩

set_option backward.isDefEq.respectTransparency.types false in
/-- Given `S` a finitely presented `R`-algebra, and `p` a prime of `S`. If `S` is smooth over `R`
at `p`, then there exists `f ∉ p` such that `R → S[1/f]` factors through some `R[X₁,...,Xₙ]`,
and that `S[1/f]` is standard etale over `R[X₁,...,Xₙ]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante1856492cd25924c594191d755a484ff6ad1aa1ebcb0e9a97ea334e46cb395e6.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23645208852af6a0e4e19a02e3362c0f4ce16053` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
