# EffectiveDescentCertificate.exists_descended

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "faaea7dd8114ba50c9b701066437dac39ad673e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7aad8eac-f299-89e3-3781-93daf8c6c152",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8b7cb57-8030-c84b-664d-af98ecde17a7",
  "kind": "theorem",
  "lexical_name": "EffectiveDescentCertificate.exists_descended",
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
  "slug": "effectivedescentcertificate-exists-descended--9b9e479b89371c8df9e9c205",
  "source": {
    "blob": "faaea7dd8114ba50c9b701066437dac39ad673e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 54,
    "path": "GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b9e479b89371c8df9e9c2055cee8408a331840c439a402cbc2230bc20429e42",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8b7cb57-8030-c84b-664d-af98ecde17a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EffectiveDescentCertificate.exists_descended
    {Galois : Type u} {Coefficient : Type v}
    {BaseObject : Type w} {ExtendedObject : Type x}
    [Group Galois] [Group Coefficient] [MulAction Galois Coefficient]
    {baseChange : BaseObject → ExtendedObject}
    {datum : GaloisDescentDatum Galois Coefficient ExtendedObject}
    (certificate : EffectiveDescentCertificate baseChange datum) :
    ∃ descended,
      baseChange descended = datum.extension ∧ datum.compatibility :=
  ⟨certificate.descended, certificate.realizes, certificate.compatible⟩

/--
Changing a cocycle without changing the declared extension still requires a
new compatibility proof; effectiveness never follows from object identity
alone.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/GaloisDescent/Variant3a812e3ec02cb8d305fe1755763614855842147917071bda5f8bbe7de3f9c78a.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faaea7dd8114ba50c9b701066437dac39ad673e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
