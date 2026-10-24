# rescale_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9c1ee3571c97a9a25cb8e672dfa90e896aee55d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5a76a4d-8fb6-1e14-0c6f-7b906a3fe0f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7fc7c263-78df-c6c7-4d86-ebb3ca8df223",
  "kind": "theorem",
  "lexical_name": "rescale_one",
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
  "slug": "rescale-one--46ef968d7ff1660e0bb90e77",
  "source": {
    "blob": "c9c1ee3571c97a9a25cb8e672dfa90e896aee55d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 456,
    "path": "GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46ef968d7ff1660e0bb90e77d5437bb2069834d11047b3d995108a75d48fdde6",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fc7c263-78df-c6c7-4d86-ebb3ca8df223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rescale_one : rescale 1 = RingHom.id (MvPowerSeries σ R) := by
  ext f n
  simp [coeff_rescale, Finsupp.prod]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Substitution/Variant7a731c9ea705d8f45e9872d9c9d8207dcf0a7ef5915d42d18188320f85cb10cc.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c1ee3571c97a9a25cb8e672dfa90e896aee55d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
