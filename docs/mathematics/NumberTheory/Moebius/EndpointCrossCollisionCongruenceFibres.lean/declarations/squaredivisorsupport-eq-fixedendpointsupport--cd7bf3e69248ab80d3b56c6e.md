# squareDivisorSupport_eq_fixedEndpointSupport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90cbad21-8771-e35b-7712-3c761dab9653",
  "kind": "theorem",
  "lexical_name": "squareDivisorSupport_eq_fixedEndpointSupport",
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
  "slug": "squaredivisorsupport-eq-fixedendpointsupport--cd7bf3e69248ab80d3b56c6e",
  "source": {
    "blob": "d7e4ccda28428db2cd1d6494881833429a135f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd7bf3e69248ab80d3b56c6ec0c0061936a379ca9161782978e5879269c6b8d1",
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

Occurrence: `result:90cbad21-8771-e35b-7712-3c761dab9653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareDivisorSupport_eq_fixedEndpointSupport
    {b m : ℕ} (hm : 0 < m) (hmb : m < b) :
    m.divisors.filter (fun d => d * d ∣ m) =
      fixedEndpointSquareDivisorSupport b m := by
  classical
  ext d
  unfold fixedEndpointSquareDivisorSupport
  simp only [Finset.mem_filter, Finset.mem_Ico]
  constructor
  · rintro ⟨hddiv, hsq⟩
    have hd_dvd : d ∣ m := Nat.dvd_of_mem_divisors hddiv
    have hdpos : 0 < d := Nat.pos_of_mem_divisors hddiv
    have hdle : d ≤ m := Nat.le_of_dvd hm hd_dvd
    exact ⟨⟨hdpos, hdle.trans_lt hmb⟩, hsq⟩
  · rintro ⟨⟨hdpos, hdb⟩, hsq⟩
    have hd_dvd_sq : d ∣ d * d := dvd_mul_right d d
    have hd_dvd : d ∣ m := hd_dvd_sq.trans hsq
    exact
      ⟨Nat.mem_divisors.mpr ⟨hd_dvd, ne_of_gt hm⟩, hsq⟩

/-- Fixed-range form of the finite square-divisor Möbius sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointCrossCollisionCongruenceFibres.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e4ccda28428db2cd1d6494881833429a135f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
