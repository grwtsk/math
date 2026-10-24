# sourcePositive_of_repoPositive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:351d513d-b537-11f6-2fa4-95e39c932377",
  "kind": "theorem",
  "lexical_name": "sourcePositive_of_repoPositive",
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
  "slug": "sourcepositive-of-repopositive--d04d3efccae4d42be0e10f8f",
  "source": {
    "blob": "4f751942735e94b8ad98135b407600e809176067",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 233,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d04d3efccae4d42be0e10f8f6854d8be058badc4174df8bff731c239b4b8789c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WeilCriterion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:351d513d-b537-11f6-2fa4-95e39c932377`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePositive_of_repoPositive
    {T S : Type*}
    [AddCommGroup T] [Module ℂ T]
    [AddCommGroup S] [Module ℂ S]
    {repoSpace : WeilTestSpace T} {sourceSpace : WeilTestSpace S}
    {repoForm : WeilHermitianForm repoSpace}
    {sourceForm : WeilHermitianForm sourceSpace}
    (transport : PositiveNormalizationTransport repoForm sourceForm)
    (hrepo : repoForm.PositiveDiagonal) :
    sourceForm.PositiveDiagonal := by
  intro g
  have hmul : 0 ≤ transport.scalar * sourceForm.diagonal g := by
    have hrepo' := hrepo (transport.toSource.symm g)
    rw [transport.diagonal_eq (transport.toSource.symm g)] at hrepo'
    simpa using hrepo'
  rcases (mul_nonneg_iff.mp hmul) with hpositive | hnegative
  · exact hpositive.2
  · exact (not_le_of_gt transport.scalar_positive hnegative.1).elim

/-- Transport an accepted source criterion through a positive normalization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WeilCriterion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f751942735e94b8ad98135b407600e809176067` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
