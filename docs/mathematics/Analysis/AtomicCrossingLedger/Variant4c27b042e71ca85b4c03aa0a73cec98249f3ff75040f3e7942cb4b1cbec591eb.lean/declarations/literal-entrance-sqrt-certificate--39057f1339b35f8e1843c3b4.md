# literal_entrance_sqrt_certificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dafe298-9cdd-ba34-fe6e-099569fe0d89",
  "kind": "theorem",
  "lexical_name": "literal_entrance_sqrt_certificate",
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
  "slug": "literal-entrance-sqrt-certificate--39057f1339b35f8e1843c3b4",
  "source": {
    "blob": "ca027b57a6468b6fbf9494bf76530e2791dbd102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 131,
    "path": "GRWTSK/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39057f1339b35f8e1843c3b4acbb5998fbdbef4b7ea543e1722fb0ada3a857ea",
  "verification": {
    "reference": "docs/verification/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dafe298-9cdd-ba34-fe6e-099569fe0d89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_entrance_sqrt_certificate :
    (370000000 : ℝ) < Real.sqrt ((ReserveConsumer.entranceScale : ℝ) - 1) := by
  have hs := Real.sq_sqrt (by norm_num [ReserveConsumer.entranceScale] :
    (0 : ℝ) ≤ (ReserveConsumer.entranceScale : ℝ) - 1)
  have hpos := Real.sqrt_nonneg ((ReserveConsumer.entranceScale : ℝ) - 1)
  have hlarge : (370000000 : ℝ) ^ 2 < (ReserveConsumer.entranceScale : ℝ) - 1 := by
    norm_num [ReserveConsumer.entranceScale]
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicCrossingLedger/Variant4c27b042e71ca85b4c03aa0a73cec98249f3ff75040f3e7942cb4b1cbec591eb.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca027b57a6468b6fbf9494bf76530e2791dbd102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
