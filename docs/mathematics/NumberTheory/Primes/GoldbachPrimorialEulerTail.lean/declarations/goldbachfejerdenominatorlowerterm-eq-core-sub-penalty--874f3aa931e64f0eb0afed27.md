# goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:909a9f84-b61b-83f1-a6f7-43f71df730f4",
  "kind": "theorem",
  "lexical_name": "goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty",
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
  "slug": "goldbachfejerdenominatorlowerterm-eq-core-sub-penalty--874f3aa931e64f0eb0afed27",
  "source": {
    "blob": "fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 272,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:874f3aa931e64f0eb0afed27c84ad3fcdc9c3a6ed718d281fab7bd0365cf1526",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:909a9f84-b61b-83f1-a6f7-43f71df730f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachFejerDenominatorLowerTerm_eq_core_sub_penalty
    {Q N q : ℕ}
    (_hq : q ∈ goldbachDenominatorRange Q) :
    goldbachFejerDenominatorLowerTerm Q N q =
      (goldbachProgressionDenominatorCoefficient q N).re *
          goldbachFejerCoreMain N -
        (if (goldbachProgressionDenominatorCoefficient q N).re < 0 then
          (-(goldbachProgressionDenominatorCoefficient q N).re) *
            (goldbachFejerWindowUpper Q N q -
              goldbachFejerCoreMain N)
        else 0) := by
  let c :=
    (goldbachProgressionDenominatorCoefficient q N).re
  unfold goldbachFejerDenominatorLowerTerm
  change
    (if 0 ≤ c then
      c * goldbachFejerCoreMain N
    else
      c * goldbachFejerWindowUpper Q N q) =
    c * goldbachFejerCoreMain N -
      (if c < 0 then
        (-c) *
          (goldbachFejerWindowUpper Q N q -
            goldbachFejerCoreMain N)
      else 0)
  by_cases hc : 0 ≤ c
  · rw [if_pos hc, if_neg (not_lt.mpr hc)]
    ring
  · have hclt : c < 0 := lt_of_not_ge hc
    rw [if_neg hc, if_pos hclt]
    ring

/-- Exact common-core-minus-penalty form of the complete sign-aware lower
source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPrimorialEulerTail.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc18a8b4f8e86ee7e3cb5a9c8ceded60e7105b31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
