# adjoin_induction_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66683954-afa6-e7be-b60d-92608a68148a",
  "kind": "theorem",
  "lexical_name": "adjoin_induction_subtype",
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
  "slug": "adjoin-induction-subtype--2c0b40d967373274a25e8628",
  "source": {
    "blob": "3589502522d209bf34cd599093cc17d367a7806e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 539,
    "path": "GRWTSK/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c0b40d967373274a25e8628b7765200c95219a084c25bfa7d2485749c56b211",
  "verification": {
    "reference": "docs/verification/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66683954-afa6-e7be-b60d-92608a68148a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjoin_induction_subtype {s : Set A} {p : adjoin R s → Prop} (a : adjoin R s)
    (mem : ∀ (x) (h : x ∈ s), p ⟨x, subset_adjoin R s h⟩) (algebraMap : ∀ r, p (algebraMap R _ r))
    (add : ∀ x y, p x → p y → p (x + y)) (mul : ∀ x y, p x → p y → p (x * y))
    (star : ∀ x, p x → p (star x)) : p a :=
  Subtype.recOn a fun b hb => by
    induction hb using adjoin_induction with
    | mem _ h => exact mem _ h
    | algebraMap _ => exact algebraMap _
    | mul _ _ _ _ h₁ h₂ => exact mul _ _ h₁ h₂
    | add _ _ _ _ h₁ h₂ => exact add _ _ h₁ h₂
    | star _ _ h => exact star _ h

variable (R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Subalgebra/Variant6c59c6bbd71c65f11715f366905ee95a977f097b0cc94c3f56dd71b04ddb0f4e.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3589502522d209bf34cd599093cc17d367a7806e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
