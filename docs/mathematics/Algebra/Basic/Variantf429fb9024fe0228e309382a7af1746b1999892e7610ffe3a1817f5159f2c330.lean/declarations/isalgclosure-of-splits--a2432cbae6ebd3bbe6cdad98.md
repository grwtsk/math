# IsAlgClosure.of_splits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a6110df-7ffc-da61-5f30-f61af7dacaa0",
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
  "slug": "isalgclosure-of-splits--a2432cbae6ebd3bbe6cdad98",
  "source": {
    "blob": "99397430c4ea7f16acde07d261420060dc76840d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 251,
    "path": "GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2432cbae6ebd3bbe6cdad9884ceb857e913d8b313350350145004d69f791b97",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a6110df-7ffc-da61-5f30-f61af7dacaa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–268.

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

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf429fb9024fe0228e309382a7af1746b1999892e7610ffe3a1817f5159f2c330.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99397430c4ea7f16acde07d261420060dc76840d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
