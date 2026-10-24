# isFiniteM?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:41f5ccabc104ff6f36406289b8dd7e66ef5fbbf9bcff7a8f31779cc95680068f",
  "kind": "def",
  "lexical_name": "isFiniteM?",
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
  "slug": "isfinitem--ea10b84d1bb5a3244fa855eb",
  "source": {
    "blob": "d6250a8a4d2ad21514990494d6dc41a60d2707ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1165,
    "line": 1152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea10b84d1bb5a3244fa855eb893c4c4e12ca7dda015379b2c848cb82d6dff390",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:41f5ccabc104ff6f36406289b8dd7e66ef5fbbf9bcff7a8f31779cc95680068f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1152–1165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private meta def isFiniteM? (x : Q(ℝ≥0∞)) : MetaM (Option Q($x ≠ (⊤ : ℝ≥0∞))) := do
  let mvar ← mkFreshExprMVar q($x ≠ (⊤ : ℝ≥0∞))
  let save ← saveState
  let (goals, _) ← Elab.runTactic mvar.mvarId! <|← `(tactic| finiteness)
  if goals.isEmpty then
    pure <| some <|← instantiateMVars mvar
  else
    restoreState save
    pure none

/-- Extension for the `positivity` tactic: exponentiation by a real number is nonnegative when
the base is nonnegative and positive when the base is positive.
This is the `ENNReal` analogue of `evalRpow` for `Real`. -/
@[positivity (_ : ℝ≥0∞) ^ (_ : ℝ)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean#L1152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6250a8a4d2ad21514990494d6dc41a60d2707ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
