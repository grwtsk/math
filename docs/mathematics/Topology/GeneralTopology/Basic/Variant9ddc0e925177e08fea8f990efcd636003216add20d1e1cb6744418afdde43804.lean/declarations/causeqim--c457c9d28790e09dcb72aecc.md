# cauSeqIm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e0eda17439531292a3dc8dcfeaac8e01c8f6f6abfc8c9be7f24bc8df1d9387c",
  "kind": "def",
  "lexical_name": "cauSeqIm",
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
  "slug": "causeqim--c457c9d28790e09dcb72aecc",
  "source": {
    "blob": "4285a781a34aaf065e62d11c6e9ef43886cf7728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 804,
    "line": 801,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c457c9d28790e09dcb72aecc9577c37f63e90d5e7d72c430be121ca7ea4a0ee0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e0eda17439531292a3dc8dcfeaac8e01c8f6f6abfc8c9be7f24bc8df1d9387c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 801–804.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cauSeqIm (f : CauSeq K norm) : CauSeq ℝ abs :=
  ⟨_, isCauSeq_im f⟩
#align is_R_or_C.cau_seq_im IsROrC.cauSeqIm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean#L801).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4285a781a34aaf065e62d11c6e9ef43886cf7728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
