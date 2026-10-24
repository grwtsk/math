# Submodule.isInternal_prime_power_torsion_of_pid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9a157d0-9c90-b9dc-7efe-d77f0f84f13a",
  "kind": "theorem",
  "lexical_name": "Submodule.isInternal_prime_power_torsion_of_pid",
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
  "slug": "submodule-isinternal-prime-power-torsion-of-pid--eda3efa262a28a782506b5c7",
  "source": {
    "blob": "12d968e39c8216e9e0b328f258228adf9b13d121",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eda3efa262a28a782506b5c7e800eb6604ee2d388ff5bf87ba2a1e0593988a5b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9a157d0-9c90-b9dc-7efe-d77f0f84f13a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.isInternal_prime_power_torsion_of_pid [DecidableEq (Ideal R)] [Module.Finite R M]
    (hM : Module.IsTorsion R M) :
    DirectSum.IsInternal fun p : (factors (⊤ : Submodule R M).annihilator).toFinset =>
      torsionBy R M
        (IsPrincipal.generator (p : Ideal R) ^
          (factors (⊤ : Submodule R M).annihilator).count ↑p) := by
  convert isInternal_prime_power_torsion hM
  ext p : 1
  rw [← torsionBySet_span_singleton_eq, Ideal.submodule_span_eq, ← Ideal.span_singleton_pow,
    Ideal.span_singleton_generator]

/-- A finitely generated torsion module over a PID is an internal direct sum of its
`p i ^ e i`-torsion submodules for some primes `p i` and numbers `e i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PID/Variant76b815e386e98540422603168e6a737d337d25305a25490f9c4f62fc84e6719d.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d968e39c8216e9e0b328f258228adf9b13d121` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
