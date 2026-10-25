# cmpModPrivate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b807a9feb4a25dd7e4e031e2d562c77972faaedb784be07d89de3206db0431ac",
  "kind": "def",
  "lexical_name": "cmpModPrivate",
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
  "slug": "cmpmodprivate--61f4c95edf353aa4882316e4",
  "source": {
    "blob": "f876fe775b7afc6a446227b3c3060b6ba3eafb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 246,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61f4c95edf353aa4882316e4910de4ff6b9ac3079054014ab4b0845f0691b139",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b807a9feb4a25dd7e4e031e2d562c77972faaedb784be07d89de3206db0431ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  private partial def cmpModPrivate (n₁ n₂ : Name) : Ordering :=
    let n₁ := stripPrivatePrefix n₁
    let n₂ := stripPrivatePrefix n₂
    match n₁, n₂ with
    | .anonymous, .anonymous => Ordering.eq
    | .anonymous, _          => Ordering.lt
    | _,          .anonymous => Ordering.gt
    | .num p₁ i₁, .num p₂ i₂ =>
      match compare i₁ i₂ with
      | Ordering.eq => cmpModPrivate p₁ p₂
      | ord         => ord
    | .num _ _,   .str _ _   => Ordering.lt
    | .str _ _,   .num _ _   => Ordering.gt
    | .str p₁ n₁, .str p₂ n₂ =>
      match compare n₁ n₂ with
      | Ordering.eq => cmpModPrivate p₁ p₂
      | ord         => ord

  /--
  `NameSet` where names are compared according to `cmpModPrivate`.
  Helps speed up dot completion because it allows us to look up names without first having to
  strip the private prefix from deep in the name, letting us reject most names without
  having to scan the full name first.
  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompletionCollectors/Variant98c007f4366e8c24f50adc1ad11049c7f2be5aaf91ef949c8ef2c35765fd6126.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f876fe775b7afc6a446227b3c3060b6ba3eafb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
