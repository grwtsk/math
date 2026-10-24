# normIntNumeral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ce7b93aae39b0495d0a939c77350198f452255c540d2e528a7021d058647cc0",
  "kind": "def",
  "lexical_name": "normIntNumeral'",
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
  "slug": "normintnumeral--bbf4b44fddbd7ed778db6278",
  "source": {
    "blob": "8f258ccef81e8c2e1d4d6ceb7eb52b9eb15004ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 100,
    "path": "GRWTSK/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbf4b44fddbd7ed778db6278b620c6697366db61a8db1a6691700c3463bfd627",
  "verification": {
    "reference": "docs/verification/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ce7b93aae39b0495d0a939c77350198f452255c540d2e528a7021d058647cc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def normIntNumeral' {α : Q(Type u)} (n n' : Q(ℕ)) (pn : Q(IsNat «$n» «$n'»))
      (e : Q($α)) (_ : Q(Ring $α)) (instCharP : Q(CharP $α $n)) : MetaM (Result e) :=
    normPow n n' pn e _ instCharP <|> normBareNumeral n n' pn e _ instCharP

end

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ReduceModChar/Variant91db0537b5811aae5ffc615293fd7876b67627c51e5a1b5e27385ed8027fe540.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f258ccef81e8c2e1d4d6ceb7eb52b9eb15004ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
