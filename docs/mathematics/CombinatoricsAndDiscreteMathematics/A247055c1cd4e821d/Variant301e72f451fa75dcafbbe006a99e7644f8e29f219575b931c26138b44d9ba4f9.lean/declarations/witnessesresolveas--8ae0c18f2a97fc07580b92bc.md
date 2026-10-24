# WitnessesResolveAs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9250a9bcb7b06b16a902c5b9253a27f4cc03add2333124fed75a5a2851b8493a",
  "kind": "def",
  "lexical_name": "WitnessesResolveAs",
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
  "slug": "witnessesresolveas--8ae0c18f2a97fc07580b92bc",
  "source": {
    "blob": "dac3e9a3b53a37470316ad0b0d908b3306af6007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 23,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant301e72f451fa75dcafbbe006a99e7644f8e29f219575b931c26138b44d9ba4f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ae0c18f2a97fc07580b92bcdfbd60f53639425d6ae98cf4a677303e79db5201",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant301e72f451fa75dcafbbe006a99e7644f8e29f219575b931c26138b44d9ba4f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9250a9bcb7b06b16a902c5b9253a27f4cc03add2333124fed75a5a2851b8493a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WitnessesResolveAs
    (registry : Registry) (witnesses : Finset StableId)
    (kind : EvidenceKind) : Prop :=
  ∀ witnessId ∈ witnesses,
    ∃ evidence ∈ registry.witnessEvidence,
      evidence.id = witnessId ∧
      evidence.kind = kind ∧
      evidence.id.Valid ∧
      evidence.subject.Valid ∧
      evidence.digest.Valid ∧
      evidence.provenance.Nonempty

end Registry

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant301e72f451fa75dcafbbe006a99e7644f8e29f219575b931c26138b44d9ba4f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/A247055c1cd4e821d/Variant301e72f451fa75dcafbbe006a99e7644f8e29f219575b931c26138b44d9ba4f9.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dac3e9a3b53a37470316ad0b0d908b3306af6007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
