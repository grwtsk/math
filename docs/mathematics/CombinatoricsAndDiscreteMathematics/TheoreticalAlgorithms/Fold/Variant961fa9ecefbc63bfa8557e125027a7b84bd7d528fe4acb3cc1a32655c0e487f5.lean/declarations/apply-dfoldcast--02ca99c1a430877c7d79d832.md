# apply_dfoldCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bec96e1d-ce7f-e9ff-b462-f98ef51a0bb2",
  "kind": "theorem",
  "lexical_name": "apply_dfoldCast",
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
  "slug": "apply-dfoldcast--02ca99c1a430877c7d79d832",
  "source": {
    "blob": "f41eb32a721fd60c0c7cef415e36045231fe665f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 240,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02ca99c1a430877c7d79d832aa9cdf9dcb2fd82f6330dc581ea10b9a8bdc0971",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bec96e1d-ce7f-e9ff-b462-f98ef51a0bb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem apply_dfoldCast {α : (i : Nat) → (h : i ≤ n := by omega) → Type u}
    (f : (i : Nat) → (h : i < n) → α i → α (i + 1)) {i j : Nat} (h : i < n) {w : i = j} {x : α i (by omega)} :
    f j (by omega) (dfoldCast @α w x) = dfoldCast (n := n) (fun i h => α i) (hi := by omega) (by omega) (f i h x) := by
  subst w
  simp

/--
`Nat.dfold` evaluates `f` on the numbers up to `n` exclusive, in increasing order:
* `Nat.dfold f 3 init = init |> f 0 |> f 1 |> f 2`
The input and output types of `f` are indexed by the current index, i.e. `f : (i : Nat) → (h : i < n) → α i → α (i + 1)`.
-/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variant961fa9ecefbc63bfa8557e125027a7b84bd7d528fe4acb3cc1a32655c0e487f5.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f41eb32a721fd60c0c7cef415e36045231fe665f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
