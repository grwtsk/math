# findRevM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cd990d6eebd763b90afc9f4a6b2942650d69d70d8b6a17eb78f550eb9f0fd286",
  "kind": "def",
  "lexical_name": "findRevM?",
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
  "slug": "findrevm--5cceba4088e1bff1effd2b74",
  "source": {
    "blob": "a19f96df7f0c05a749bf437b769a085f21f6423c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 361,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cceba4088e1bff1effd2b747b13697763011c5d5d9ff2da8f35c81508130a97",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cd990d6eebd763b90afc9f4a6b2942650d69d70d8b6a17eb78f550eb9f0fd286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findRevM? {α : Type} {m : Type → Type w} [Monad m] (as : Subarray α) (p : α → m Bool) : m (Option α) :=
  as.findSomeRevM? fun a => return if (← p a) then some a else none

/--
Tests each element in a subarray with a Boolean predicate in reverse order, stopping at the first
element that satisfies the predicate. The element that satisfies the predicate is returned, or
`none` if no element satisfies the predicate.

Examples:
 * `#["red", "green", "blue"].toSubarray.findRev? (·.length ≠ 4) = some "green"`
 * `#["red", "green", "blue"].toSubarray.findRev? (fun _ => true) = some "blue"`
 * `#["red", "green", "blue"].toSubarray 0 0 |>.findRev? (fun _ => true) = none`
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subarray/Variant1e0c608216a5e20ee644de1295a81af59e22febd3c67ae54fd7d67c613f2b991.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a19f96df7f0c05a749bf437b769a085f21f6423c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
