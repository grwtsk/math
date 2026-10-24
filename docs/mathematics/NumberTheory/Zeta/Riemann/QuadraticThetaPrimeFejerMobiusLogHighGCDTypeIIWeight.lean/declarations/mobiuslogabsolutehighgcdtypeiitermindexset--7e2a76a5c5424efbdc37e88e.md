# mobiusLogAbsoluteHighGCDTypeIITermIndexSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c294271761261e54082d99a5c883b531d7a848a93a2f209e4e925686944a764b",
  "kind": "def",
  "lexical_name": "mobiusLogAbsoluteHighGCDTypeIITermIndexSet",
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
  "slug": "mobiuslogabsolutehighgcdtypeiitermindexset--7e2a76a5c5424efbdc37e88e",
  "source": {
    "blob": "29130ffb1b08afe4da29860f267cd0d827f700d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7e2a76a5c5424efbdc37e88e15fbf252ee01bef52466b96aa551ff11d14a19b5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c294271761261e54082d99a5c883b531d7a848a93a2f209e4e925686944a764b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mobiusLogAbsoluteHighGCDTypeIITermIndexSet
    (X Y : ℕ) : Finset MobiusLogHighGCDTypeIITermIndex :=
  (fejerPositiveLagSet X).sigma fun h =>
    (Finset.Ioc (2 * X) (4 * X - h)).sigma fun n =>
      (centeredMobiusLogHighGCDSet h Y).sigma fun g =>
        centeredMobiusLogSquarefreePairGCDClassIndexSet n h g

/-- Value of one exact absolute high-g Type II summand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMobiusLogHighGCDTypeIIWeight.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29130ffb1b08afe4da29860f267cd0d827f700d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
