# decoded_typed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fdc23be-db70-f992-7696-09dfdf98198d",
  "kind": "theorem",
  "lexical_name": "decoded_typed",
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
  "slug": "decoded-typed--dac5cf9fae1014ce42fb6712",
  "source": {
    "blob": "865305ad13773a1bfae279e1cdb9a1aa4fd17a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2214,
    "line": 2204,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dac5cf9fae1014ce42fb67129837545694764378680db667f3acb7a32d5e2b9a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fdc23be-db70-f992-7696-09dfdf98198d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2204–2214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decoded_typed (t : Fin 7) {v : Expr S}
    (hv : HasType P Γ v B.predType) (mv : WellModed γ v .data) :
    HasType P Γ (B.decoded L.code t v) B.predType ∧ WellModed γ (B.decoded L.code t v) .data := by
  obtain ⟨s,hs⟩ := H.relational_formed.probe.funTriple.domain.1
  have ht := H.relational_formed.probe.raw_sorted H.type_sorted
  have mT := H.relational_formed.probe.raw_mode H.type_mode
  have he := H.relational_formed.probe.doubled_formed.encode_typed
    H.relational_formed.channel.predicate ht mT t.castSucc hv mv
  exact H.relational_formed.probe.doubled_formed.decode_typed
    H.relational_formed.channel.predicate ht mT he.1 he.2 (ht s hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variante1d85e67771ea4feb8858a9d4abc4070975a1b24246cc790269bbacbfcac171f.lean#L2204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `865305ad13773a1bfae279e1cdb9a1aa4fd17a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
