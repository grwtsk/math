# getD_inter_of_mem_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bebd2191-b04d-a21a-5cb7-ac2569ba9fd0",
  "kind": "theorem",
  "lexical_name": "getD_inter_of_mem_right",
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
  "slug": "getd-inter-of-mem-right--215998e143feae2fe43b4f52",
  "source": {
    "blob": "88473b62fb0212be85f1300ff151ce437fb36282",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 777,
    "line": 773,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:215998e143feae2fe43b4f52a28c91619ad5065c7a5652e2570a48ab1a9d0d97",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebd2191-b04d-a21a-5cb7-ac2569ba9fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–777.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_inter_of_mem_right [TransCmp cmp] (h₁ : t₁.WF)
    (h₂ : t₂.WF) {k fallback : α} (mem : k ∈ t₂) :
    (t₁ ∩ t₂).getD k fallback = t₁.getD k fallback :=
  TreeMap.Raw.getKeyD_inter_of_mem_right h₁ h₂ mem

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantdb911365a2913d6987ccd5c4b18015d3aeb41f5336e3b06f22df99db2ab9e826.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88473b62fb0212be85f1300ff151ce437fb36282` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
