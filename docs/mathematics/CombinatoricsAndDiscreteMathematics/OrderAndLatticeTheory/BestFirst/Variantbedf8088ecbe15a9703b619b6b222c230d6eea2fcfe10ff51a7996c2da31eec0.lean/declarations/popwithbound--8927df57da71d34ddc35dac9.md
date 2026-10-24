# popWithBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d44edd7b320378aa3c600954b7542de36d09568eea2f58c5ee33851da598634",
  "kind": "def",
  "lexical_name": "popWithBound",
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
  "slug": "popwithbound--8927df57da71d34ddc35dac9",
  "source": {
    "blob": "254dcdfde25da30b208684838d7fd881fd5b8e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 172,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8927df57da71d34ddc35dac9b2cf9a826cb04ebdb0bb091433da238311e739b8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d44edd7b320378aa3c600954b7542de36d09568eea2f58c5ee33851da598634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def popWithBound (q : BestFirstQueue prio ε m β maxSize) :
    m (Option (((a : α) × (ε a) × β) × BestFirstQueue prio ε m β maxSize)) := do
  let q' ← ensureFirstIsBest q
  match q'.minEntry? with
  | none =>
    -- The queue is empty, nothing to return.
    return none
  | some (n, l) =>
    match ← l.uncons with
    | none =>
      -- The `MLList` associated to `n` was actually empty, so we remove `n` and try again.
      popWithBound (q'.erase n)
    | some (b, l') =>
      -- Return the initial element `b` along with the current estimator,
      -- and replace the `MLList` associated with `n` with its tail.
      return some (⟨n.key, n.estimator, b⟩, q'.modify n fun _ => l')

/--
Pop a `β` off the `MLList m β` with lowest priority,
also returning the index in `α` and the value of the current best lower bound for its priority.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `254dcdfde25da30b208684838d7fd881fd5b8e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
