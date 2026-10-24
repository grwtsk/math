# factorization_intervalLcm_prime_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c7aacad85448f25c9d24ab84f1beda862ca5fd2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1ba0ad1-953f-95d9-04d5-62d6cba969c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5135dbc4-5b5a-c1c7-1061-214f63c5eebd",
  "kind": "theorem",
  "lexical_name": "factorization_intervalLcm_prime_log",
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
  "slug": "factorization-intervallcm-prime-log--dd1ef573a6a305112055795f",
  "source": {
    "blob": "c7aacad85448f25c9d24ab84f1beda862ca5fd2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd1ef573a6a305112055795f773672ee75b45f656c23ce62029a03437234e746",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5135dbc4-5b5a-c1c7-1061-214f63c5eebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_intervalLcm_prime_log
    (N : Nat) {p : Nat}
    (hp : Nat.Prime p) :
    Nat.factorization (intervalLcm N) p = Nat.log p N := by
  rw [factorization_intervalLcm_eq_max]
  have hp1 := hp.one_lt
  refine le_antisymm ?_ ?_
  · simp only [Finset.sup_le_iff, Finset.mem_Icc, and_imp]
    intro m hm1 hmN
    exact
      Nat.le_log_of_pow_le hp1
        ((Nat.le_of_dvd (by omega) (Nat.ordProj_dvd m p)).trans hmN)
  · rcases le_or_gt p N with hpN | hpN
    · have hpow := Nat.pow_log_le_self p (x := N) (by omega)
      have hmem : p ^ Nat.log p N ∈ Finset.Icc 1 N := by
        exact
          Finset.mem_Icc.mpr
            ⟨Nat.succ_le_iff.mpr (pow_pos hp.pos _), hpow⟩
      have hle :=
        Finset.le_sup
          (s := Finset.Icc 1 N)
          (f := fun n => Nat.factorization n p)
          hmem
      have hfac :
          Nat.factorization (p ^ Nat.log p N) p = Nat.log p N := by
        simp [Nat.factorization_pow, hp]
      rwa [hfac] at hle
    · simp [Nat.log_of_lt hpN]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LcmChebyshev/Variant964deda8bfe970a012bc639b568eec52b6ab5494d381b46478e5825997f02348.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7aacad85448f25c9d24ab84f1beda862ca5fd2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
