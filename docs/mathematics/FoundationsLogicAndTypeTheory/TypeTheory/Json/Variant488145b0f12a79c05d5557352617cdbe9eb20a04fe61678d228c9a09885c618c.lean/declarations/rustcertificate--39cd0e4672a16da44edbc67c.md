# rustCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4677cee0fdafcc8434d7432322521bbb40db6de1a95b8bc8f6d22228c498dcec",
  "kind": "def",
  "lexical_name": "rustCertificate",
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
  "slug": "rustcertificate--39cd0e4672a16da44edbc67c",
  "source": {
    "blob": "d067a9b989200350a66a8394c6405b9fb88c089d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39cd0e4672a16da44edbc67ca6958b97adb48124ccdef1aea3044f73b33e149c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4677cee0fdafcc8434d7432322521bbb40db6de1a95b8bc8f6d22228c498dcec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rustCertificate (value : Value) : Option RustCertificate := do
  if certificateGrammar value then pure () else none
  let schema ← getString "schema" value
  let label ← getString "plan_digest" value
  let objects ← FrontendCorrespondence.objects value
  let source ← field "source" value >>= rustReadSet
  let destination ← field "destination" value >>= rustReadSet
  let archive ← field "archive" value >>= rustReadSet
  let preservation ← field "preservation" value >>= rustReadSet
  let raws ← getArray "raw_sources" value >>= allSome rustReadSet
  let entries ← getArray "occurrences" value >>= allSome rustOccurrence
  let outputs ← getArray "outputs" value >>= allSome rustOutput
  pure ⟨schema, label, objects, source, destination, archive, preservation, raws, entries, outputs⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d067a9b989200350a66a8394c6405b9fb88c089d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
