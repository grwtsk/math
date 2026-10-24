# quadraticConstant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2e8426277f46816a6f695a753ac0ab57c3b1ef525700817c84cf0003087c2a2",
  "kind": "def",
  "lexical_name": "quadraticConstant",
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
  "slug": "quadraticconstant--d6b58967bf667990a15c0bb6",
  "source": {
    "blob": "7a4b3bb35534c9452b589858596c9139e4a3b919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 182,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6b58967bf667990a15c0bb6fd4f73693b612e292a85a254103c6da45ba1125c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2e8426277f46816a6f695a753ac0ab57c3b1ef525700817c84cf0003087c2a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quadraticConstant : ℝ := 16 + 8 * Real.log 2 + 2 * (Real.log 2) ^ 2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/00dbb2fd59536042e5201b6a6010e3eb8387b6039e83f8be753d27d07df21ce8SourceKapitzaSto/Variantd6071e27a0cd4ca441e8c41e7d008dab8f8eb4586bdd8d93a9d1db4060d9f346.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a4b3bb35534c9452b589858596c9139e4a3b919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
