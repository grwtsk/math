# packet_gap_lt_two_of_rectangle_total_lt_certified_add_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfaacb72-6e3a-dd92-46e0-1d88ff7b5ab6",
  "kind": "theorem",
  "lexical_name": "packet_gap_lt_two_of_rectangle_total_lt_certified_add_two",
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
  "slug": "packet-gap-lt-two-of-rectangle-total-lt-certified-add-two--3245a0925c0f2978e66bf48e",
  "source": {
    "blob": "3d92df78a112183db4e5470d28151e3d23d45084",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3245a0925c0f2978e66bf48e65c5bf6f1ca4fc70746b38b00b2ed26bf8d565b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfaacb72-6e3a-dd92-46e0-1d88ff7b5ab6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem packet_gap_lt_two_of_rectangle_total_lt_certified_add_two
    (N : ℕ)
    (alignment : CanonicalFamilyAlignment family (contourHeight N))
    (report : CanonicalRectangleIndexEnclosure N)
    (count : ℕ) (accepted : report.accepts count = true)
    (strict : count < family.certifiedCount + 2) :
    (packetOfRectangleIndex N alignment report count accepted).certificate.gap < 2 := by
  simpa [packetOfRectangleIndex] using
    packet_gap_lt_two_of_total_lt_certified_add_two alignment
      report.toCanonicalCountEnclosure count accepted strict

/-- Fewer than two omitted positive-height multiplicity units exclude every off-line
reflection pair through the selected contour height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleTuringPacket.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d92df78a112183db4e5470d28151e3d23d45084` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
