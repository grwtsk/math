# quotNilradicalPowEquivPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1d8bbe2df5a2a0db638502b379fd9fb1305460dc1e672cb322cf6b7abd05b10c",
  "kind": "def",
  "lexical_name": "quotNilradicalPowEquivPi",
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
  "slug": "quotnilradicalpowequivpi--cb4948b9e728915ee3202153",
  "source": {
    "blob": "14051f45c9135cc57e37c0df6f33b702e50ecb25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 620,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb4948b9e728915ee3202153706fd1f66905404299a331d1ea74b551e93f6de9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1d8bbe2df5a2a0db638502b379fd9fb1305460dc1e672cb322cf6b7abd05b10c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def quotNilradicalPowEquivPi (n : ℕ) :
    (R ⧸ nilradical R ^ n) ≃ₐ[R] ∀ I : MaximalSpectrum R, R ⧸ I.asIdeal ^ n :=
  (Ideal.quotientEquivAlgOfEq R (nilradical_pow_eq_iInf R n)).trans
    { __ := Ideal.quotientInfRingEquivPiQuotient _ fun I _ ↦ .pow ∘ I.isCoprime_of_ne
      commutes' _ := rfl}

/-- A reduced commutative Artinian ring is isomorphic to a finite product of fields,
namely the quotients by the maximal ideals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant9dd8fb425c7861f51f46dc339cf266334577d759a562f0e81b163eea3546836f.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14051f45c9135cc57e37c0df6f33b702e50ecb25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
