# Runtime.markMultiThreaded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:328e5ee859efc597b0d91d5362353d0df9ad4ea2332cad882af2d00e13f3df95",
  "kind": "def",
  "lexical_name": "Runtime.markMultiThreaded",
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
  "slug": "runtime-markmultithreaded--709ece13e9faa3759192d4e3",
  "source": {
    "blob": "6d2ee82102a22d30b73b8dbb945bec7209217636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1847,
    "line": 1835,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:709ece13e9faa3759192d4e3b47627f558657005b2f4772dd4ad6fffa54cbba2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:328e5ee859efc597b0d91d5362353d0df9ad4ea2332cad882af2d00e13f3df95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1835–1847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Runtime.markMultiThreaded (a : α) : BaseIO α := return a

/--
Marks given value and its object graph closure as persistent. This will remove
reference counter updates but prevent the closure from being deallocated until
the end of the process! It can still be useful to do eagerly when the value
will be marked persistent later anyway and there is available time budget to
mark it now or it would be unnecessarily marked multi-threaded in between.

This function is only safe to use on objects (in the full closure) which are
not used concurrently or which are already persistent.
-/
@[extern "lean_runtime_mark_persistent"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IO/Variant55359bb8a436da127ba94e259d0fd0a29cbdb98fb45f2a29d4f127baeaad5b1c.lean#L1835).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2ee82102a22d30b73b8dbb945bec7209217636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
