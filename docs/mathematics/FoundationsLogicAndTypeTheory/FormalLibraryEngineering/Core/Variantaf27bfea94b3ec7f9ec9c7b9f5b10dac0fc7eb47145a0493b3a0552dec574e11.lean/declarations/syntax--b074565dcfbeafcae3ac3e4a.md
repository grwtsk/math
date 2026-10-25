# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8edc045a76eecae9ce85947f5f6632bff33569174af8e4ef810ae60d9b64190",
  "kind": "syntax",
  "lexical_name": null,
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
  "slug": "syntax--b074565dcfbeafcae3ac3e4a",
  "source": {
    "blob": "b4b9f4cab66495a3472a4d0413c2e0956043d91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 388,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b074565dcfbeafcae3ac3e4a1459bfe795af59ba8b71ea4fa30dd445550b413b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8edc045a76eecae9ce85947f5f6632bff33569174af8e4ef810ae60d9b64190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
syntax "gcongr_discharger" : tactic

/-- The `gcongr` tactic applies "generalized congruence" rules, reducing a relational goal
between a LHS and RHS matching the same pattern to relational subgoals between the differing
inputs to the pattern.  For example,
```
example {a b x c d : ℝ} (h1 : a + 1 ≤ b + 1) (h2 : c + 2 ≤ d + 2) :
    x ^ 2 * a + c ≤ x ^ 2 * b + d := by
  gcongr
  · linarith
  · linarith
```
This example has the goal of proving the relation `≤` between a LHS and RHS both of the pattern
```
x ^ 2 * ?_ + ?_
```
(with inputs `a`, `c` on the left and `b`, `d` on the right); after the use of
`gcongr`, we have the simpler goals `a ≤ b` and `c ≤ d`.

A pattern can be provided explicitly; this is useful if a non-maximal match is desired:
```
example {a b c d x : ℝ} (h : a + c + 1 ≤ b + d + 1) :
    x ^ 2 * (a + c) + 5 ≤ x ^ 2 * (b + d) + 5 := by
  gcongr x ^ 2 * ?_ + 5
  linarith
```

The "generalized congruence" rules used are the library lemmas which have been tagged with the
attribute `@[gcongr]`.  For example, the first example constructs the proof term
```
add_le_add (mul_le_mul_of_nonneg_left _ (pow_bit0_nonneg x 1)) _
```
using the generalized congruence lemmas `add_le_add` and `mul_le_mul_of_nonneg_left`.

The tactic attempts to discharge side goals to these "generalized congruence" lemmas (such as the
side goal `0 ≤ x ^ 2` in the above application of `mul_le_mul_of_nonneg_left`) using the tactic
`gcongr_discharger`, which wraps `positivity` but can also be extended. Side goals not discharged
in this way are left for the user. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantaf27bfea94b3ec7f9ec9c7b9f5b10dac0fc7eb47145a0493b3a0552dec574e11.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4b9f4cab66495a3472a4d0413c2e0956043d91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
