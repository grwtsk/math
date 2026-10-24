# StringSliceInvariant.withEarlyReturnNewDo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3cdb27985b1f3fc50c75c3d2b4ef99b03e1eea1e59c55665efb31a1efd590eb",
  "kind": "abbrev",
  "lexical_name": "StringSliceInvariant.withEarlyReturnNewDo",
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
  "slug": "stringsliceinvariant-withearlyreturnnewdo--e20e4da728267bcedd156fff",
  "source": {
    "blob": "be39776453cdad037b6399d98f1ffc8b2582b5ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2175,
    "line": 2164,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e20e4da728267bcedd156fff99f1bd80340eb07d6381fbe2d637f99ae97168a3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3cdb27985b1f3fc50c75c3d2b4ef99b03e1eea1e59c55665efb31a1efd590eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2164–2175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev StringSliceInvariant.withEarlyReturnNewDo {s : String.Slice}
  (onContinue : s.Pos → β → Assertion ps)
  (onReturn : γ → β → Assertion ps)
  (onExcept : ExceptConds ps := ExceptConds.false) :
    StringSliceInvariant s (Prod (Option γ) β) ps
    :=
  ⟨fun ⟨pos, x, b⟩ => spred(
        (⌜x = none⌝ ∧ onContinue pos b)
      ∨ (∃ r, ⌜x = some r⌝ ∧ ⌜pos = s.endPos⌝ ∧ onReturn r b)),
   onExcept⟩

@[spec]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SpecLemmas/Variant935dd64a1b615220698ffefffa123e74c4660f2b5c2a79b40af98d606725b605.lean#L2164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be39776453cdad037b6399d98f1ffc8b2582b5ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
