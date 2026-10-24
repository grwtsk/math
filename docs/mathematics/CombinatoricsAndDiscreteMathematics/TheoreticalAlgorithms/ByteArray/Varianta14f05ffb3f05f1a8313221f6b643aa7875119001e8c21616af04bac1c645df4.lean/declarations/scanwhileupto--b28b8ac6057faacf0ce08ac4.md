# scanWhileUpTo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e368fde15103c9baf9bea60a86b7662cb0a175a1e0203c97374a71d5015e4c3e",
  "kind": "def",
  "lexical_name": "scanWhileUpTo",
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
  "slug": "scanwhileupto--b28b8ac6057faacf0ce08ac4",
  "source": {
    "blob": "8727f6f16969e4dcbe25f12c387ef7efb7bc1bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 233,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b28b8ac6057faacf0ce08ac4eacbddddfb836c8ff97c549529574510ecb91753",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e368fde15103c9baf9bea60a86b7662cb0a175a1e0203c97374a71d5015e4c3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def scanWhileUpTo (pred : UInt8 → Bool) (limit : Nat) (count : Nat)
    (iter : ByteArray.Iterator) : Nat × ByteArray.Iterator × Bool :=
  if count ≥ limit then
    (count, iter, false)
  else if h : iter.hasNext then
    if pred (iter.curr' h) then
      scanWhileUpTo pred limit (count + 1) (iter.next' h)
    else
      (count, iter, false)
  else
    (count, iter, true)

/--
Parses while a predicate is satisfied.
Fails with `.eof` if input ends while the predicate still holds.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8727f6f16969e4dcbe25f12c387ef7efb7bc1bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
