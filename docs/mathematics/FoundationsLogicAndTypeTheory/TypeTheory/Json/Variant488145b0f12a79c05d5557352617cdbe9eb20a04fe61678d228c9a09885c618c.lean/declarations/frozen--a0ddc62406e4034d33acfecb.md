# frozen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d80b55a92a8dc366a9a112674ba57c18cfb854c62bdf86097dad05e2424853ed",
  "kind": "def",
  "lexical_name": "frozen",
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
  "slug": "frozen--a0ddc62406e4034d33acfecb",
  "source": {
    "blob": "d067a9b989200350a66a8394c6405b9fb88c089d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 95,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0ddc62406e4034d33acfecbf7aa900661b4ee9d8502c030435fa4fec384848c",
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

Occurrence: `declaration:d80b55a92a8dc366a9a112674ba57c18cfb854c62bdf86097dad05e2424853ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def frozen (plan expected : Value) : Option Frozen := do
  let certificate ← rustCertificate expected
  let raw ← rawRoutes plan
  let prepared ← preparedBindings plan
  let placeholders ← placeholderPaths plan
  let empty ← emptyIndex certificate.objects
  pure ⟨certificate.planLabel, certificate.objects, certificate.source,
    certificate.destination, certificate.archive, certificate.preservation,
    certificate.rawSources, raw, prepared, placeholders, empty⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Json/Variant488145b0f12a79c05d5557352617cdbe9eb20a04fe61678d228c9a09885c618c.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d067a9b989200350a66a8394c6405b9fb88c089d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
