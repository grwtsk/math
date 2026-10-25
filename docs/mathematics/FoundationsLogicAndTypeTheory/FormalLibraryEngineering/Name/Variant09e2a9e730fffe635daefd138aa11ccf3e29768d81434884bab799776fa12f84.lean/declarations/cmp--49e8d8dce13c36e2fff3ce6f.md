# cmp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d779c61ee4b40c383e0127dfc5a056475d5ed31b266693a3e92013e120bfed2",
  "kind": "def",
  "lexical_name": "cmp",
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
  "slug": "cmp--49e8d8dce13c36e2fff3ce6f",
  "source": {
    "blob": "f69370868e943ebe60464838dacbc77dcfd6477d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:49e8d8dce13c36e2fff3ce6f3520b93c57e00dbb7ae3fe12d02e8adce6032632",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d779c61ee4b40c383e0127dfc5a056475d5ed31b266693a3e92013e120bfed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cmp : Name → Name → Ordering
  | anonymous, anonymous => Ordering.eq
  | anonymous, _         => Ordering.lt
  | _,         anonymous => Ordering.gt
  | num p₁ i₁, num p₂ i₂ =>
    match cmp p₁ p₂ with
    | Ordering.eq => compare i₁ i₂
    | ord => ord
  | num _ _,   str _ _   => Ordering.lt
  | str _ _,   num _ _   => Ordering.gt
  | str p₁ n₁, str p₂ n₂ =>
    match cmp p₁ p₂ with
    | Ordering.eq => compare n₁ n₂
    | ord => ord

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Name/Variant09e2a9e730fffe635daefd138aa11ccf3e29768d81434884bab799776fa12f84.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f69370868e943ebe60464838dacbc77dcfd6477d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
