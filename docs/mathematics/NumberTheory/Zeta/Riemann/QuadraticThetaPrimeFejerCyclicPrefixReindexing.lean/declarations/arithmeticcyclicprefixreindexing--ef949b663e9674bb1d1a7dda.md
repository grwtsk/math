# arithmeticCyclicPrefixReindexing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5711eb9f-ee96-fdd4-d287-d1beca9fb58b",
  "kind": "theorem",
  "lexical_name": "arithmeticCyclicPrefixReindexing",
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
  "slug": "arithmeticcyclicprefixreindexing--ef949b663e9674bb1d1a7dda",
  "source": {
    "blob": "c9580b98fd8ff03f9ff3aee614e3929323e04f31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 77,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicPrefixReindexing.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef949b663e9674bb1d1a7dda05f9abda0600dc296549ab4099f24bd3345e3230",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicPrefixReindexing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5711eb9f-ee96-fdd4-d287-d1beca9fb58b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticCyclicPrefixReindexing :
    ArithmeticCyclicPrefixReindexingClaim := by
  intro X N m n hreg hn0 hn1 hm0 hm1
  rcases hreg with ⟨hX, hN, hNL⟩
  rw [cyclicFejerSmoothedPrefix_eq_subtype_sum hX]
  let e :=
    cyclicSharpPrefixSubtypeEquivIoc hX hm0
      (by simpa [fejerOctavePeriod] using hm1)
  change
    (∑ y :
      {z : ZMod (fejerOctavePeriod X) //
        2 * X < octaveRepresentative X z ∧
          octaveRepresentative X z ≤ m},
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) - y.1))
      =
    ∑ q ∈ Finset.Ioc (2 * X) m,
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) -
          (q : ZMod (fejerOctavePeriod X)))
  rw [← Finset.sum_attach]
  exact Fintype.sum_equiv e
    (fun y =>
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) - y.1))
    (fun q =>
      cyclicFejerKernel X N
        ((n : ZMod (fejerOctavePeriod X)) - q.1))
    (by
      intro y
      rfl)

/-- The complete arithmetic/cyclic prefix-weight bridge is now source-proved. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicPrefixReindexing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicPrefixReindexing.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9580b98fd8ff03f9ff3aee614e3929323e04f31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
