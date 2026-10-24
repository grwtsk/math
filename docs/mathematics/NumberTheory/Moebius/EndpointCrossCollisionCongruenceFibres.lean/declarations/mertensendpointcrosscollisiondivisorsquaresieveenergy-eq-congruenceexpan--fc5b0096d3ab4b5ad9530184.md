# mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceExpanded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4a31660-35e3-cbc0-3657-bc6c9981d802",
  "kind": "theorem",
  "lexical_name": "mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceExpanded",
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
  "slug": "mertensendpointcrosscollisiondivisorsquaresieveenergy-eq-congruenceexpan--fc5b0096d3ab4b5ad9530184",
  "source": {
    "blob": "d7e4ccda28428db2cd1d6494881833429a135f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 159,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc5b0096d3ab4b5ad9530184efadb691ab6b8451db44a6d7e839c223c9365db7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4a31660-35e3-cbc0-3657-bc6c9981d802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensEndpointCrossCollisionDivisorSquareSieveEnergy_eq_congruenceExpanded
    (b : ℕ) :
    mertensEndpointCrossCollisionDivisorSquareSieveEnergy b =
      mertensEndpointCrossCollisionCongruenceExpandedEnergy b := by
  classical
  unfold mertensEndpointCrossCollisionDivisorSquareSieveEnergy
    mertensEndpointCrossCollisionCongruenceExpandedEnergy
    mertensSquarefreeMidpointDivisorSieveTerm
  apply congrArg (fun x : ℝ => 2 * x)
  apply Finset.sum_congr rfl
  intro n hn
  apply Finset.sum_congr rfl
  intro a ha
  obtain ⟨hmpos, hmb⟩ :=
    mertensCrossCollisionMidpoint_pos_lt_endpoint hn ha
  change mertensSquarefreeMidpointEndpointProduct (b - n) a *
    squareDivisorMobiusSum (mertensCrossCollisionMidpoint b n a) = _
  rw [squareDivisorMobiusSum_eq_fixedCongruenceRange hmpos hmb]
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro d _hd
  by_cases hc :
      squareDivisorCongruence d
        (mertensCrossCollisionMidpoint b n a)
  · simp [hc]
    ring
  · simp [hc]

/-- Endpoint energy after the finite Fubini swap: one signed correlation fibre
for each square modulus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e4ccda28428db2cd1d6494881833429a135f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
