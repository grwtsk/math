# IsAlgClosure.of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "acb56c60131de223b4dc6123ed343581caa2254e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d232891-a808-1b77-6438-7ec08bf509ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7d8ab61-61d1-44eb-34a3-7dd9c5f4fc50",
  "kind": "theorem",
  "lexical_name": "IsAlgClosure.of_splits",
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
  "slug": "isalgclosure-of-splits--9169ccf1e8333409829e93ab",
  "source": {
    "blob": "acb56c60131de223b4dc6123ed343581caa2254e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 243,
    "path": "GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9169ccf1e8333409829e93ab39d055322eed1649cfe03cfe9dd74ad238bedcf6",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7d8ab61-61d1-44eb-34a3-7dd9c5f4fc50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAlgClosure.of_splits {R K} [CommRing R] [IsDomain R] [Field K] [Algebra R K]
    [Algebra.IsIntegral R K] [NoZeroSMulDivisors R K]
    (h : ∀ p : R[X], p.Monic → Irreducible p → p.Splits (algebraMap R K)) : IsAlgClosure R K where
  isAlgebraic := inferInstance
  isAlgClosed := .of_exists_root _ fun _p _ p_irred ↦
    have ⟨g, monic, irred, dvd⟩ := p_irred.exists_dvd_monic_irreducible_of_isIntegral (K := R)
    exists_root_of_splits _ (splits_of_splits_of_dvd _ (map_monic_ne_zero monic)
      ((splits_id_iff_splits _).mpr <| h g monic irred) dvd) <|
        degree_ne_of_natDegree_ne p_irred.natDegree_pos.ne'

namespace IsAlgClosed

variable {K : Type u} [Field K] {L : Type v} {M : Type w} [Field L] [Algebra K L] [Field M]
  [Algebra K M] [IsAlgClosed M]

/-- If E/L/K is a tower of field extensions with E/L algebraic, and if M is an algebraically
  closed extension of K, then any embedding of L/K into M/K extends to an embedding of E/K.
  Known as the extension lemma in https://math.stackexchange.com/a/687914. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant3c043e98bcdb951da58ea78566be6247518c88b3b529aaef8a1b41a85d2b9498.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acb56c60131de223b4dc6123ed343581caa2254e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
