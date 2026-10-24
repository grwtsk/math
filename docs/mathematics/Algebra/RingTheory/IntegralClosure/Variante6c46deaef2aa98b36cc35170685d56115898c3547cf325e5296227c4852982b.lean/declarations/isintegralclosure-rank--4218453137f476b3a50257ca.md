# IsIntegralClosure.rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fc637cf-d615-a85b-d0cd-7ba4aedd3c94",
  "kind": "theorem",
  "lexical_name": "IsIntegralClosure.rank",
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
  "slug": "isintegralclosure-rank--4218453137f476b3a50257ca",
  "source": {
    "blob": "2cee1e848c2096ae7d81d1384e6e40ead6d45652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 233,
    "path": "GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4218453137f476b3a50257ca8a70feea147c803482cf06196a8be53d485ddbe7",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fc637cf-d615-a85b-d0cd-7ba4aedd3c94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsIntegralClosure.rank [IsPrincipalIdealRing A] [NoZeroSMulDivisors A L] :
    FiniteDimensional.finrank A C = FiniteDimensional.finrank K L := by
  haveI : Module.Free A C := IsIntegralClosure.module_free A K L C
  haveI : IsNoetherian A C := IsIntegralClosure.isNoetherian A K L C
  haveI : IsLocalization (Algebra.algebraMapSubmonoid C A⁰) L :=
    IsIntegralClosure.isLocalization A K L C
  let b := Basis.localizationLocalization K A⁰ L (Module.Free.chooseBasis A C)
  rw [FiniteDimensional.finrank_eq_card_chooseBasisIndex, FiniteDimensional.finrank_eq_card_basis b]
#align is_integral_closure.rank IsIntegralClosure.rank

variable {A K}

/- If `L` is a finite separable extension of `K = Frac(A)`, where `A` is
integrally closed and Noetherian, the integral closure of `A` in `L` is
Noetherian. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/IntegralClosure/Variante6c46deaef2aa98b36cc35170685d56115898c3547cf325e5296227c4852982b.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cee1e848c2096ae7d81d1384e6e40ead6d45652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
