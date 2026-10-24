# Ultrafilter.eventually_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76bbfaf3-c53c-b975-8ab1-fa27bcf78748",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c57e2cc-9c40-2a18-ad44-b8c5d1fe3eb8",
  "kind": "theorem",
  "lexical_name": "Ultrafilter.eventually_mul",
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
  "slug": "ultrafilter-eventually-mul--92def3968f642bc03323df15",
  "source": {
    "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92def3968f642bc03323df157362f1c7bf92613ce2a73e161cadf7cfeb566956",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c57e2cc-9c40-2a18-ad44-b8c5d1fe3eb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ultrafilter.eventually_mul {M} [Mul M] (U V : Ultrafilter M) (p : M → Prop) :
    (∀ᶠ m in ↑(U * V), p m) ↔ ∀ᶠ m in U, ∀ᶠ m' in V, p (m * m') :=
  Iff.rfl
#align ultrafilter.eventually_mul Ultrafilter.eventually_mul
#align ultrafilter.eventually_add Ultrafilter.eventually_add

/-- Semigroup structure on `Ultrafilter M` induced by a semigroup structure on `M`. -/
@[to_additive
      "Additive semigroup structure on `Ultrafilter M` induced by an additive semigroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bb1c6db54ca2124297ce7094ea64406de55ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
