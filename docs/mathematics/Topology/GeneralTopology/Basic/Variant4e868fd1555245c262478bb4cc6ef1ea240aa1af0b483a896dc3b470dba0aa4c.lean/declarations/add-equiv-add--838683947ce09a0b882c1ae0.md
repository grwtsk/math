# add_equiv_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bb71a33-d767-c6a7-a84f-9562e0dd5374",
  "kind": "theorem",
  "lexical_name": "add_equiv_add",
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
  "slug": "add-equiv-add--838683947ce09a0b882c1ae0",
  "source": {
    "blob": "fb1a85629a9958306a476a1bcc053e1db528ce27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 423,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:838683947ce09a0b882c1ae076065f275a58669130e349109a2ac5fed6f471a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bb71a33-d767-c6a7-a84f-9562e0dd5374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 423–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem add_equiv_add {f1 f2 g1 g2 : CauSeq β abv} (hf : f1 ≈ f2) (hg : g1 ≈ g2) :
    f1 + g1 ≈ f2 + g2 := by simpa only [← add_sub_add_comm] using add_limZero hf hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4e868fd1555245c262478bb4cc6ef1ea240aa1af0b483a896dc3b470dba0aa4c.lean#L423).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb1a85629a9958306a476a1bcc053e1db528ce27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
