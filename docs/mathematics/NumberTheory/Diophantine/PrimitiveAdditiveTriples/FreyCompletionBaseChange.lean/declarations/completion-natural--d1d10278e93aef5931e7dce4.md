# completion_natural

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f03ae560-5ffb-4123-1fc4-021d3385d94f",
  "kind": "theorem",
  "lexical_name": "completion_natural",
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
  "slug": "completion-natural--d1d10278e93aef5931e7dce4",
  "source": {
    "blob": "b94a8842ece546e139336b7901b87ace4699846b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 81,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1d10278e93aef5931e7dce4b0b7e1a6b1ff18a577dbaff427ff7582ba939d39",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03ae560-5ffb-4123-1fc4-021d3385d94f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion_natural (f : R →+* S) (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (u : FreyJetCompletion.Limit a b r) :
    FreyJetCompletion.completionEquiv (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) (mapLimit f a b r u) =
      PowerSeries.map f (FreyJetCompletion.completionEquiv a b r j hr hj u) := by
  apply FreyParameterSeries.series_ext
  intro N
  rw [FreyJetCompletion.completion_projection, seriesTrunc_map,
    FreyJetCompletion.completion_projection]
  change toParameter (f a) (f b) (f r) (f j)
      (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N
        (jetMap f a b r N (u.val N)) =
    parameterMap f N (toParameter a b r j hr hj N (u.val N))
  exact toParameter_natural f a b r j hr hj N (u.val N)

/-- Vanishing to at least the selected finite order is preserved by every
coefficient map. Noninjective specialization can strictly increase exact order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCompletionBaseChange.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b94a8842ece546e139336b7901b87ace4699846b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
