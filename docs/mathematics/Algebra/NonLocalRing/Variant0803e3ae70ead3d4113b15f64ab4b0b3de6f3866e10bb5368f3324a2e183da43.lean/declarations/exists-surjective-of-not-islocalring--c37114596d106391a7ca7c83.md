# exists_surjective_of_not_isLocalRing.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25774b6b-848f-1337-86d3-a042c8fd88b3",
  "kind": "theorem",
  "lexical_name": "exists_surjective_of_not_isLocalRing.",
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
  "slug": "exists-surjective-of-not-islocalring--c37114596d106391a7ca7c83",
  "source": {
    "blob": "b299a889eec6ef2fb1406600baee6d05b34d190a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c37114596d106391a7ca7c839d46e1b887c2993d3baf26fe4af475d3ef980c46",
  "verification": {
    "reference": "docs/verification/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25774b6b-848f-1337-86d3-a042c8fd88b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_surjective_of_not_isLocalRing.{u} {R : Type u} [CommRing R] [Nontrivial R]
    (h : ¬IsLocalRing R) :
    ∃ (K₁ K₂ : Type u) (_ : Field K₁) (_ : Field K₂) (f : R →+* K₁ × K₂),
      Function.Surjective f := by
  /- get two different maximal ideals and project on the product of quotients -/
  obtain ⟨m₁, m₂, _, _, hm₁m₂⟩ := (not_isLocalRing_tfae.out 0 2).mp h
  let e := Ideal.quotientInfEquivQuotientProd m₁ m₂ <| Ideal.isCoprime_of_isMaximal hm₁m₂
  let f := e.toRingHom.comp <| Ideal.Quotient.mk (m₁ ⊓ m₂)
  use R ⧸ m₁, R ⧸ m₂, Ideal.Quotient.field m₁, Ideal.Quotient.field m₂, f
  apply Function.Surjective.comp e.surjective Ideal.Quotient.mk_surjective

end IsLocalRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonLocalRing/Variant0803e3ae70ead3d4113b15f64ab4b0b3de6f3866e10bb5368f3324a2e183da43.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b299a889eec6ef2fb1406600baee6d05b34d190a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
