# decreased_energy_with_margin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74f47f86-aeac-f92f-cca5-33efd932a590",
  "kind": "theorem",
  "lexical_name": "decreased_energy_with_margin",
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
  "slug": "decreased-energy-with-margin--a40b873c975d06f386cba2ed",
  "source": {
    "blob": "4814f63849129b4aa7e1e363c9ffb09d1d8e6442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 133,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40b873c975d06f386cba2ed1fc80aafbf9fb00a399d5d3d6e7bf1aeea234ff8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74f47f86-aeac-f92f-cca5-33efd932a590`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decreased_energy_with_margin
    {HilbertState : Type u}
    [NormedAddCommGroup HilbertState]
    [InnerProductSpace ℂ HilbertState]
    [FiniteDimensional ℂ HilbertState]
    (certificate :
      FiniteLyapunovOperatorCertificate HilbertState)
    (state : HilbertState) :
    (inner ℂ (certificate.derivative state)
        (certificate.energyOperator
          (certificate.derivative state))).re +
        certificate.decrease * ‖state‖ ^ 2 ≤
      (inner ℂ state
        (certificate.energyOperator state)).re := by
  linarith [certificate.operator_decreases_energy state]

end FiniteLyapunovOperatorCertificate

/--
Exact or interval payloads remain data until a proved checker accepts them.
The checker theorem, not the payload, yields the proposition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linearization/Variant2be2dfda72b38d786efd4c042fe7676e50de5aff0747a98897e5ca9255c6f3d0.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4814f63849129b4aa7e1e363c9ffb09d1d8e6442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
