# divisorSqrtCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aaf62071b291371f61eb3678cfdf11f65273c0acea697f9fe989aa23d42033f7",
  "kind": "def",
  "lexical_name": "divisorSqrtCode",
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
  "slug": "divisorsqrtcode--2e2f478d0b6068802f390b24",
  "source": {
    "blob": "0b9e1a9707dab2219bc11f5be76c01229dd6574f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 30,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e2f478d0b6068802f390b24572442821cf71b767db75693d7082ae8f6c4b66f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aaf62071b291371f61eb3678cfdf11f65273c0acea697f9fe989aa23d42033f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def divisorSqrtCode
    {n : ℕ}
    (hn : n ≠ 0)
    (d : {d : ℕ // d ∈ n.divisors}) :
    Bool × Fin (n.sqrt + 1) :=
  if hsmall : d.1 ≤ n.sqrt then
    (false, ⟨d.1, Nat.lt_succ_of_le hsmall⟩)
  else
    (true,
      ⟨n / d.1, Nat.lt_succ_of_le (by
        have hdn : d.1 ∣ n := (Nat.mem_divisors.mp d.2).1
        have hmul : n = d.1 * (n / d.1) :=
          (Nat.mul_div_cancel' hdn).symm
        rcases Nat.le_sqrt_of_eq_mul hmul with hd | hq
        · exact (hsmall hd).elim
        · exact hq)⟩)

/-- The square-root divisor code is injective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDivisorSqrtBound.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b9e1a9707dab2219bc11f5be76c01229dd6574f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
