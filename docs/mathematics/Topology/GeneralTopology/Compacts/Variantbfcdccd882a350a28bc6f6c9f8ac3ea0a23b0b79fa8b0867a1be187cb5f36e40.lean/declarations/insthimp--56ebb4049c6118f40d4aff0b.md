# instHImp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b34c393de93aa177dc611bb2000d6ed01c0350aca6ffe4f9ac76cc640ed16f7",
  "kind": "instance",
  "lexical_name": "instHImp",
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
  "slug": "insthimp--56ebb4049c6118f40d4aff0b",
  "source": {
    "blob": "19ac31ed5f794c33439fa1dad23f69fab508e3a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 513,
    "path": "GRWTSK/Topology/GeneralTopology/Compacts/Variantbfcdccd882a350a28bc6f6c9f8ac3ea0a23b0b79fa8b0867a1be187cb5f36e40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56ebb4049c6118f40d4aff0b8af30c31a6e8da4c76e3fb62ddcbfdb7cf76f8ff",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compacts/Variantbfcdccd882a350a28bc6f6c9f8ac3ea0a23b0b79fa8b0867a1be187cb5f36e40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b34c393de93aa177dc611bb2000d6ed01c0350aca6ffe4f9ac76cc640ed16f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instHImp : HImp (CompactOpens α) where
  himp s t := ⟨⟨s ⇨ t, IsClosed.isCompact
    (by simpa [himp_eq] using t.isCompact.isClosed.union s.isOpen.isClosed_compl)⟩,
    by simpa [himp_eq] using t.isOpen.union s.isCompact.isClosed.isOpen_compl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compacts/Variantbfcdccd882a350a28bc6f6c9f8ac3ea0a23b0b79fa8b0867a1be187cb5f36e40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compacts/Variantbfcdccd882a350a28bc6f6c9f8ac3ea0a23b0b79fa8b0867a1be187cb5f36e40.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19ac31ed5f794c33439fa1dad23f69fab508e3a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
