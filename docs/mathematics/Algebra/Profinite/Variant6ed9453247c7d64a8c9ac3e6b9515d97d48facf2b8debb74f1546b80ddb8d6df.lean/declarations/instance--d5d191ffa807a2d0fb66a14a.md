# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45cba321fc78b0957fd5a3f75b53123a9b49975acde825326f4010effd957774",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d5d191ffa807a2d0fb66a14a",
  "source": {
    "blob": "2a16d714bbccb28eda032a355518d8853069d2f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 151,
    "path": "GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5d191ffa807a2d0fb66a14a40870f5ced3c55f8bbdd4b25b2f992b7c6a08969",
  "verification": {
    "reference": "docs/verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45cba321fc78b0957fd5a3f75b53123a9b49975acde825326f4010effd957774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (P : Ideal A) (Q : Ideal B) [Q.IsPrime] [Q.LiesOver P]
    [Algebra.IsInvariant A B G] (σ : (B ⧸ Q) ≃ₐ[A ⧸ P] B ⧸ Q) (N : OpenNormalSubgroup G) :
    Nonempty ((stabilizerHomSurjectiveAuxFunctor P Q σ).obj N) := by
  have : IsScalarTower (A ⧸ P) (FixedPoints.subalgebra A B N.1.1 ⧸
    Q.under (FixedPoints.subalgebra A B N.1.1)) (B ⧸ Q) := IsScalarTower.of_algebraMap_eq
    (Quotient.ind fun x ↦ rfl)
  obtain ⟨σ', hσ'⟩ := Ideal.Quotient.exists_algEquiv_fixedPoint_quotient_under (G ⧸ N.1.1) P
    (Q.under (FixedPoints.subalgebra A B N.1.1)) σ
  obtain ⟨τ, rfl⟩ := Ideal.Quotient.stabilizerHom_surjective (G ⧸ N.1.1) P
    (Q.under (FixedPoints.subalgebra A B N.1.1)) σ'
  refine ⟨τ, ?_⟩
  ext x
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
  exact hσ' x

/-- The stabilizer subgroup of `Q` surjects onto `Aut((B/Q)/(A/P))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Profinite/Variant6ed9453247c7d64a8c9ac3e6b9515d97d48facf2b8debb74f1546b80ddb8d6df.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a16d714bbccb28eda032a355518d8853069d2f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
