# ringKrullDim_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be864a21f27517f89db19af68631295d0566f741",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec870271-4ca7-d8e4-2528-a57b62084a18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cff3d9da-af8b-f833-53a2-a8181d0ef09f",
  "kind": "lemma",
  "lexical_name": "ringKrullDim_quotient",
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
  "slug": "ringkrulldim-quotient--8645ce865ac0f5a4b254fbe8",
  "source": {
    "blob": "be864a21f27517f89db19af68631295d0566f741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 25,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8645ce865ac0f5a4b254fbe834dc63d328fa22b94d59e7229203711237e9e24c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cff3d9da-af8b-f833-53a2-a8181d0ef09f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ringKrullDim_quotient (I : Ideal R) :
    ringKrullDim (R ⧸ I) = Order.krullDim (PrimeSpectrum.zeroLocus (R := R) I) := by
  let e : PrimeSpectrum (R ⧸ I) ≃ (PrimeSpectrum.zeroLocus (R := R) I) :=
    (Equiv.ofInjective _ (PrimeSpectrum.comap_injective_of_surjective _
      Ideal.Quotient.mk_surjective)).trans (Equiv.setCongr
      (by rw [PrimeSpectrum.range_comap_of_surjective _ _ Ideal.Quotient.mk_surjective,
        Ideal.mk_ker]))
  let e' : PrimeSpectrum (R ⧸ I) ≃o (PrimeSpectrum.zeroLocus (R := R) I) :=
    { __ := e, map_rel_iff' := fun {a b} ↦ by
        show a.asIdeal.comap _ ≤ b.asIdeal.comap _ ↔ a ≤ b
        rw [← Ideal.map_le_iff_le_comap,
          Ideal.map_comap_of_surjective _ Ideal.Quotient.mk_surjective,
          PrimeSpectrum.asIdeal_le_asIdeal] }
  rw [ringKrullDim, Order.krullDim_eq_of_orderIso e']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NonZeroDivisors/Variante442020c7cad8201c1ebc88c7045c3e474e80a6897ebea353afee84b41218d5e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be864a21f27517f89db19af68631295d0566f741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
