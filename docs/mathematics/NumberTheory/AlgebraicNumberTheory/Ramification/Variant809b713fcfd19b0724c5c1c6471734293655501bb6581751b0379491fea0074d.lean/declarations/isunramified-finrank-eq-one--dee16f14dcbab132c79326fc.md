# IsUnramified.finrank_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28d7812c-d74b-2f53-486a-8830e08ce31b",
  "kind": "theorem",
  "lexical_name": "IsUnramified.finrank_eq_one",
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
  "slug": "isunramified-finrank-eq-one--dee16f14dcbab132c79326fc",
  "source": {
    "blob": "d27e69e66eacee791f01b903d55dad0cd2f4d5f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dee16f14dcbab132c79326fc27434304ae09ba04d388e2fccffd8cd8f66813b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28d7812c-d74b-2f53-486a-8830e08ce31b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsUnramified.finrank_eq_one [w.LiesOver v] (h : w.IsUnramified K) :
    Module.finrank v.Completion w.Completion = 1 := by
  rcases v.isReal_or_isComplex with (hv | hv)
  · have := LiesOver.extensionEmbedding_liesOver_of_isReal w hv
    rw [Algebra.finrank_eq_of_equiv_equiv (ringEquivRealOfIsReal hv) (ringEquivRealOfIsReal
        (h.liesOver_isReal_over _ _ hv)) (RingHom.ext fun _ ↦ Complex.ofReal_inj.1 <| by simp),
      Module.finrank_self]
  · cases LiesOver.embedding_comp_eq_or_conjugate_embedding_comp_eq w v with
    | inl hl =>
      have : ComplexEmbedding.LiesOver w.embedding v.embedding := ⟨hl⟩
      have := liesOver_extensionEmbedding w v
      rw [Algebra.finrank_eq_of_equiv_equiv (ringEquivComplexOfIsComplex hv)
          (ringEquivComplexOfIsComplex (LiesOver.isComplex_of_isComplex_under _ hv)) (by ext; simp),
        Module.finrank_self]
    | inr hr =>
      have : ComplexEmbedding.LiesOver (conjugate w.embedding) v.embedding := ⟨hr⟩
      have := liesOver_conjugate_extensionEmbedding w v
      rw [Algebra.finrank_eq_of_equiv_equiv (ringEquivComplexOfIsComplex hv)
        ((ringEquivComplexOfIsComplex (LiesOver.isComplex_of_isComplex_under _ hv)).trans
          (starRingAut (R := ℂ))) (by ext; simp [← conjugate_coe_eq]),
        Module.finrank_self]

@[deprecated (since := "2026-07-10")] alias Completion.finrank_eq_two_of_isRamified :=
  IsRamified.finrank_eq_two

@[deprecated (since := "2026-07-10")] alias Completion.finrank_eq_one_of_isUnramified :=
  IsUnramified.finrank_eq_one

variable (w) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant809b713fcfd19b0724c5c1c6471734293655501bb6581751b0379491fea0074d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d27e69e66eacee791f01b903d55dad0cd2f4d5f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
