# zeta_order_critical_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c055ac23-1fec-7717-1c1b-d9d1ea3c4d72",
  "kind": "theorem",
  "lexical_name": "zeta_order_critical_reflection",
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
  "slug": "zeta-order-critical-reflection--07672ea1626054043bf653d0",
  "source": {
    "blob": "00326873dd498ee2568a84c0de70d5b08090674b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 95,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07672ea1626054043bf653d01f0a48cf8cb19d8eab12ec2cfc121cbd3ce3fb98",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c055ac23-1fec-7717-1c1b-d9d1ea3c4d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_order_critical_reflection (z : ZeroPoint) :
    analyticOrderAt riemannZeta (criticalReflection z.1) =
      analyticOrderAt riemannZeta z.1 := by
  calc
    analyticOrderAt riemannZeta (criticalReflection z.1) =
        analyticOrderAt riemannZeta (conj z.1) :=
      zeta_order_one_sub ⟨zeroConjugate z.1, z.2.conjugate⟩
    _ = analyticOrderAt riemannZeta z.1 := zeta_order_conjugate z

/-- This is the exact preservation equation requested by the OLD consumer.
CanonicalZeroDivisor already proves finite positive order before conversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00326873dd498ee2568a84c0de70d5b08090674b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
