# orbit_eq_primesOver

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "623df194ae50aa279004c825509480ec6a87254c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53220d0c-c440-9901-936c-606330ac9d34",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:acf1cd0b-ab40-b0b3-37e7-06379fc45075",
  "kind": "theorem",
  "lexical_name": "orbit_eq_primesOver",
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
  "slug": "orbit-eq-primesover--4a535dab7ce124fe4a55d5ef",
  "source": {
    "blob": "623df194ae50aa279004c825509480ec6a87254c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 166,
    "path": "GRWTSK/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a535dab7ce124fe4a55d5ef75ef6d7530ff09dfd4b5f4f46d20409e5293a1ee",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acf1cd0b-ab40-b0b3-37e7-06379fc45075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orbit_eq_primesOver [Finite G] [SMulCommClass G A B] (P : Ideal A) (Q : Ideal B)
    [hP : Q.LiesOver P] [hQ : Q.IsPrime] : MulAction.orbit G Q = P.primesOver B := by
  refine Set.ext fun R ↦ ⟨fun ⟨g, hg⟩ ↦ hg ▸ ⟨hQ.smul g, hP.smul g⟩, fun h ↦ ?_⟩
  have : R.IsPrime := h.1
  obtain ⟨g, hg⟩ := exists_smul_of_under_eq A B G Q R (hP.over.symm.trans h.2.over)
  exact ⟨g, hg.symm⟩

end Algebra.IsInvariant

end transitivity

section surjectivity

open FaithfulSMul IsScalarTower Polynomial

variable {A B : Type*} [CommRing A] [CommRing B] [Algebra A B]
  (G : Type*) [Group G] [Finite G] [MulSemiringAction G B] [SMulCommClass G A B]
  (P : Ideal A) (Q : Ideal B) [Q.IsPrime] [Q.LiesOver P]

variable (K L : Type*) [Field K] [Field L]
  [Algebra (A ⧸ P) K] [Algebra (B ⧸ Q) L]
  [Algebra (A ⧸ P) L] [IsScalarTower (A ⧸ P) (B ⧸ Q) L]
  [Algebra K L] [IsScalarTower (A ⧸ P) K L]
  [Algebra.IsInvariant A B G]

/-- A technical lemma for `fixed_of_fixed1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623df194ae50aa279004c825509480ec6a87254c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
