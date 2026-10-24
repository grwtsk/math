# respectsIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12a2b19a-4406-ce3f-61d4-eb6467027acd",
  "kind": "lemma",
  "lexical_name": "respectsIso",
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
  "slug": "respectsiso--7da69a165cc550d25e15d949",
  "source": {
    "blob": "8eba53ddd5c23edb77bd0273ae7ef0feabf03c28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 42,
    "path": "GRWTSK/Algebra/Bijective/Variant7c843320179a843be43bb0a5d07be10caecb7756ac2caec371a0c9851e5834a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7da69a165cc550d25e15d9493f8b45d8eedd0e336620ac200c61930c9c7e23f6",
  "verification": {
    "reference": "docs/verification/Algebra/Bijective/Variant7c843320179a843be43bb0a5d07be10caecb7756ac2caec371a0c9851e5834a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12a2b19a-4406-ce3f-61d4-eb6467027acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma respectsIso : RespectsIso (fun f ↦ Function.Bijective f) :=
  RingHom.Bijective.stableUnderComposition.respectsIso fun e ↦ e.bijective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Bijective/Variant7c843320179a843be43bb0a5d07be10caecb7756ac2caec371a0c9851e5834a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Bijective/Variant7c843320179a843be43bb0a5d07be10caecb7756ac2caec371a0c9851e5834a3.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eba53ddd5c23edb77bd0273ae7ef0feabf03c28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
