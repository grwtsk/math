# set_set_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76e675d3-6fe3-bc5f-0306-f2e2f81417f1",
  "kind": "theorem",
  "lexical_name": "set_set_perm",
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
  "slug": "set-set-perm--58a94d34bb179d8f4dff5bd4",
  "source": {
    "blob": "f699816f0bd2221bce9628a62a9f453a3b5ec34f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58a94d34bb179d8f4dff5bd48dffce2d03038b2623f48923a872d35163fcfa4e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76e675d3-6fe3-bc5f-0306-f2e2f81417f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_set_perm {as : List α} {i j : Nat} (h₁ : i < as.length) (h₂ : j < as.length) :
    (as.set i as[j]).set j as[i] ~ as := by
  if h₃ : i = j then
    simp [h₃]
  else
    if h₃ : i < j then
      let j' := j - i
      have t : j = i + j' := by omega
      generalize j' = j' at t
      subst t
      exact set_set_perm' _ _ (by omega)
    else
      rw [set_comm _ _ (by omega)]
      let i' := i - j
      have t : i = j + i' := by omega
      generalize i' = i' at t
      subst t
      apply set_set_perm' _ _ (by omega)

namespace Perm

/-- Variant of `List.Perm.take` specifying that the permutation is constant after `i` elementwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Perm/Variant7133c35433bb714ebab36e486f6a87b92ae9436f6a61e5ff0caf8fc5842c1e01.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f699816f0bd2221bce9628a62a9f453a3b5ec34f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
