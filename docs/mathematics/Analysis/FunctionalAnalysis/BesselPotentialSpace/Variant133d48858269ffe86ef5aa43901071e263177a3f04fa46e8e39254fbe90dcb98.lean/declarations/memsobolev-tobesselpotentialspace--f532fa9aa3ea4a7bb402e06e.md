# MemSobolev.toBesselPotentialSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:329e8bfd3cc3857ff6971267270aaeb2ac2ce89f8bbb67de92ce57aab89e21e5",
  "kind": "def",
  "lexical_name": "MemSobolev.toBesselPotentialSpace",
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
  "slug": "memsobolev-tobesselpotentialspace--f532fa9aa3ea4a7bb402e06e",
  "source": {
    "blob": "c4be79a4bcb54a29c7257cde05b02d6438719dac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 299,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f532fa9aa3ea4a7bb402e06e4c78ba1a032d7ca5a2fcc6eb0ea5382b4c228205",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:329e8bfd3cc3857ff6971267270aaeb2ac2ce89f8bbb67de92ce57aab89e21e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MemSobolev.toBesselPotentialSpace {f : 𝓢'(E, F)} (hf : f.MemSobolev s p) : H^{s, p}(E, F) where
  toDistr := f
  toLp := hf.choose
  bessel_toDistr_eq_toLp := hf.choose_spec

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BesselPotentialSpace/Variant133d48858269ffe86ef5aa43901071e263177a3f04fa46e8e39254fbe90dcb98.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4be79a4bcb54a29c7257cde05b02d6438719dac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
