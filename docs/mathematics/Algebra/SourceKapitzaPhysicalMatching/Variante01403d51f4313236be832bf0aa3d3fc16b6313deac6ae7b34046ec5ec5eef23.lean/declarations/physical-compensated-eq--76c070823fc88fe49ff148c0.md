# physical_compensated_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3fdedfe-dd94-bfaf-3705-520083925d80",
  "kind": "theorem",
  "lexical_name": "physical_compensated_eq",
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
  "slug": "physical-compensated-eq--76c070823fc88fe49ff148c0",
  "source": {
    "blob": "ccfaace64168f8150d62e5e9ea7a243bbb5a3a81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 47,
    "path": "GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76c070823fc88fe49ff148c022a5746f0cfa0664e7f08ada96a7add39e127608",
  "verification": {
    "reference": "docs/verification/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3fdedfe-dd94-bfaf-3705-520083925d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physical_compensated_eq (A : ℝ) :
    (∑ n ∈ primePowerInventory (2 * A),
      (ArithmeticFunction.vonMangoldt n - 1) * physicalWeight A n) =
      compensatedSourceSum A := by
  apply Finset.sum_congr rfl
  intro n hn
  rw [physicalWeight_eq A hn]

/-- Complete proper-cofactor physical row, with no prime restriction on the cofactor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SourceKapitzaPhysicalMatching/Variante01403d51f4313236be832bf0aa3d3fc16b6313deac6ae7b34046ec5ec5eef23.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccfaace64168f8150d62e5e9ea7a243bbb5a3a81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
