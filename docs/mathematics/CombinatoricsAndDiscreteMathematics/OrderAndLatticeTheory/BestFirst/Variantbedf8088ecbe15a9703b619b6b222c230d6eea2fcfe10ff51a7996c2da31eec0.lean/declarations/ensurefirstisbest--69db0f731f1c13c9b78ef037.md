# ensureFirstIsBest

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbb7a5a26134185e76c08f7148b0c14a55b5882ac1ddb86ee0ee6218e6b9b898",
  "kind": "def",
  "lexical_name": "ensureFirstIsBest",
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
  "slug": "ensurefirstisbest--69db0f731f1c13c9b78ef037",
  "source": {
    "blob": "254dcdfde25da30b208684838d7fd881fd5b8e90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 140,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69db0f731f1c13c9b78ef037a701268aa5cd4c559df58900fba529c0d72e9187",
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

Occurrence: `declaration:bbb7a5a26134185e76c08f7148b0c14a55b5882ac1ddb86ee0ee6218e6b9b898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def ensureFirstIsBest (q : BestFirstQueue prio ε m β maxSize) :
    m (BestFirstQueue prio ε m β maxSize) := do
  match q.entryAtIdx? 0 with
  | none =>
    -- The queue is empty, nothing to do.
    return q
  | some (n, l) => match q.entryAtIdx? 1 with
    | none => do
      -- There's only one element in the queue, no reordering necessary.
      return q
    | some (m, _) =>
      -- `n` is the first index, `m` is the second index.
      -- We need to improve our estimate of the priority for `n` to make sure
      -- it really should come before `m`.
      match improveUntil (prio n.key) (m.estimate < ·) n.estimator with
      | .error none =>
        -- If we couldn't improve the estimate at all, it is exact, and hence the best element.
        return q
      | .error (some e') =>
        -- If we improve the estimate, but it is still at most the estimate for `m`,
        -- this is the best element, so all we need to do is store the updated estimate.
        return q.erase n |>.insert ⟨n.key, e'⟩ l
      | .ok e' =>
        -- If we improved the estimate and it becomes greater than the estimate for `m`,
        -- we re-insert `n` with its new estimate, and then try again.
        ensureFirstIsBest (q.erase n |>.insert ⟨n.key, e'⟩ l)

/--
Pop a `β` off the `MLList m β` with lowest priority,
also returning the index in `α` and the current best lower bound for its priority.
This may require improving estimates of priorities and shuffling the queue.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BestFirst/Variantbedf8088ecbe15a9703b619b6b222c230d6eea2fcfe10ff51a7996c2da31eec0.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `254dcdfde25da30b208684838d7fd881fd5b8e90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
