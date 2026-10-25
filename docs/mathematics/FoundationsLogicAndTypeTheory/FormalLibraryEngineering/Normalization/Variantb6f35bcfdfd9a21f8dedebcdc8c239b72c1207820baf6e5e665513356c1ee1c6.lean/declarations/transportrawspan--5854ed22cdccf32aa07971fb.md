# transportRawSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eec8b4fa915b96ec6013e15868c20bd8d04ac51b376f5133eb604a5e19a70274",
  "kind": "def",
  "lexical_name": "transportRawSpan",
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
  "slug": "transportrawspan--5854ed22cdccf32aa07971fb",
  "source": {
    "blob": "4b5290fac851c09a84f5617b83375971e4c937d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5854ed22cdccf32aa07971fba4e60bc23a419fdfc017d8d2cee1747d45d6abd5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eec8b4fa915b96ec6013e15868c20bd8d04ac51b376f5133eb604a5e19a70274`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def transportRawSpan
    {raw : RawText}
    {normalized : TextCarrier}
    {spec : NormalizationSpec}
    (certificate : NormalizationCertificate raw normalized spec)
    (span :
      Span
        { id := raw.id
          chars := raw.chars
          normalizedDigest := raw.sourceDigest
          sourceDigest := raw.sourceDigest }) :
    Option (Span normalized) :=
  let start :=
    certificate.offsets.map
      ⟨span.start, by
        have := span.stop_le_size
        omega⟩
  let stop :=
    certificate.offsets.map
      ⟨span.stop, by
        have := span.stop_le_size
        omega⟩
  if nonempty : start.val < stop.val then
    some
      { start := start.val
        stop := stop.val
        start_lt_stop := nonempty
        stop_le_size := by
          have bound := stop.isLt
          omega }
  else
    none

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variantb6f35bcfdfd9a21f8dedebcdc8c239b72c1207820baf6e5e665513356c1ee1c6.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b5290fac851c09a84f5617b83375971e4c937d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
