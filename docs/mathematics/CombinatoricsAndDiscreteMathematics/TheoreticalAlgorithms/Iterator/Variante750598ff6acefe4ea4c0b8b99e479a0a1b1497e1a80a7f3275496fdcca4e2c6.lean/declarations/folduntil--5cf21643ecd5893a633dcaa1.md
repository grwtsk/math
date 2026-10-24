# foldUntil

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:494afb5c9b55b4d64216a2a45a3cec65d68b4b667df7f15c63ec0ec4d14ca999",
  "kind": "def",
  "lexical_name": "foldUntil",
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
  "slug": "folduntil--5cf21643ecd5893a633dcaa1",
  "source": {
    "blob": "8c20a62e7d1ff9b82cde2096d3695f21f1e2fa7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cf21643ecd5893a633dcaa1c8f2fb9ef80fc70f2c976bbb32a6e54b4d009d2d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:494afb5c9b55b4d64216a2a45a3cec65d68b4b667df7f15c63ec0ec4d14ca999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def foldUntil (it : Iterator) (init : α) (f : α → Char → Option α) : α × Iterator :=
  if it.atEnd then
    (init, it)
  else if let some a := f init it.curr then
    foldUntil it.next a f
  else
    (init, it)

end Iterator

end String.Legacy

namespace Substring.Raw

/--
Returns an iterator into the underlying string, at the substring's starting position. The ending
position is discarded, so the iterator alone cannot be used to determine whether its current
position is within the original substring.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variante750598ff6acefe4ea4c0b8b99e479a0a1b1497e1a80a7f3275496fdcca4e2c6.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c20a62e7d1ff9b82cde2096d3695f21f1e2fa7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
