# condVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd5e753d0e8f3b40f9724f37c368bf253d44e3ba4c469b56425dead1a3306031",
  "kind": "def",
  "lexical_name": "condVar",
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
  "slug": "condvar--1a1e27d8fdc8997fec5da5d3",
  "source": {
    "blob": "2c7ae8818202e0ffd910a3b0e7843b728f1d645b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 43,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a1e27d8fdc8997fec5da5d353ec2e520b172d9a1621f393f80f0fdbb42722ed",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd5e753d0e8f3b40f9724f37c368bf253d44e3ba4c469b56425dead1a3306031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def condVar : Ω → ℝ := μ[(X - μ[X | m]) ^ 2 | m]

@[inherit_doc] scoped notation "Var[" X "; " μ " | " m "]" => condVar m X μ

/-- Conditional variance of a real-valued random variable. It is defined as `0` if any one of the
following conditions is true:
- `m` is not a sub-σ-algebra of `m₀`,
- `volume` is not σ-finite with respect to `m`,
- `X - 𝔼[X | m]` is not square-integrable. -/
scoped notation "Var[" f "|" m "]" => Var[f; MeasureTheory.volume | m]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CondVar/Variant0e5abaaf2e68a504e2679dbed39153466ebab18bf9517670119b4abbeddf326c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c7ae8818202e0ffd910a3b0e7843b728f1d645b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
