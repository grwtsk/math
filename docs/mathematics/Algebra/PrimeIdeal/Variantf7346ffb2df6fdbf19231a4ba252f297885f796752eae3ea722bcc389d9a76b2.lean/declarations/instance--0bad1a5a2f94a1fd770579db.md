# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4246e30fa1cc9cc57561e6f2fb1bc96582ff56b9c40385a6e5491c91c1768e93",
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
  "slug": "instance--0bad1a5a2f94a1fd770579db",
  "source": {
    "blob": "46c3604e239e0501659c3475b26e7e02d76e862b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 197,
    "path": "GRWTSK/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bad1a5a2f94a1fd770579db7bd8d28f44c17795c811286f51a4c4d855542f2f",
  "verification": {
    "reference": "docs/verification/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4246e30fa1cc9cc57561e6f2fb1bc96582ff56b9c40385a6e5491c91c1768e93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsPrime.isMaximal [IsPrime I] : IsMaximal I := by
  simp only [IsMaximal_iff, Set.eq_univ_iff_forall, IsPrime.toIsProper, true_and]
  intro J hIJ x
  rcases Set.exists_of_ssubset hIJ with ⟨y, hyJ, hyI⟩
  suffices ass : x ⊓ y ⊔ x ⊓ yᶜ ∈ J
  · rwa [sup_inf_inf_compl] at ass
  exact
    sup_mem (J.lower inf_le_right hyJ)
      (hIJ.le <| I.lower inf_le_right <| IsPrime.mem_compl_of_not_mem ‹_› hyI)
#align order.ideal.is_prime.is_maximal Order.Ideal.IsPrime.isMaximal

end BooleanAlgebra

end Ideal

namespace PFilter

variable [Preorder P]

/-- A filter `F` is prime if its complement is an ideal.
-/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c3604e239e0501659c3475b26e7e02d76e862b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
