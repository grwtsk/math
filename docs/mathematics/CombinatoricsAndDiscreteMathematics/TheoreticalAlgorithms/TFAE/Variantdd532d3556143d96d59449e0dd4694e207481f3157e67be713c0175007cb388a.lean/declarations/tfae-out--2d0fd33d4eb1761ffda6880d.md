# TFAE.out

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:806ea16c-81a8-fd3e-8125-e1459784f25a",
  "kind": "theorem",
  "lexical_name": "TFAE.out",
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
  "slug": "tfae-out--2d0fd33d4eb1761ffda6880d",
  "source": {
    "blob": "52feb73cb5793438470d0ffda25397e5e65e1540",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantdd532d3556143d96d59449e0dd4694e207481f3157e67be713c0175007cb388a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d0fd33d4eb1761ffda6880d33b58e26447bd6f16d1bfb47e5a325eaffde9256",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantdd532d3556143d96d59449e0dd4694e207481f3157e67be713c0175007cb388a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:806ea16c-81a8-fd3e-8125-e1459784f25a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem TFAE.out {l} (h : TFAE l) (i j : Nat) {a b}
    (h₁ : l[i - 1]? = some a := by rfl)
    (h₂ : l[j - 1]? = some b := by rfl)
    (_ : i ≠ 0 := by first | decide +kernel | fail "TFAE indices start at 1.")
    (_ : j ≠ 0 := by first | decide +kernel | fail "TFAE indices start at 1.") :
    a ↔ b :=
  h _ (List.mem_of_getElem? h₁) _ (List.mem_of_getElem? h₂)

/-- If `P₁ x ↔ ... ↔ Pₙ x` for all `x`, then `(∀ x, P₁ x) ↔ ... ↔ (∀ x, Pₙ x)`.
Note: in concrete cases, Lean has trouble finding the list `[P₁, ..., Pₙ]` from the list
`[(∀ x, P₁ x), ..., (∀ x, Pₙ x)]`, but simply providing a list of underscores with the right
length makes it happier.

Example:
```lean
example (P₁ P₂ P₃ : ℕ → Prop) (H : ∀ n, [P₁ n, P₂ n, P₃ n].TFAE) :
    [∀ n, P₁ n, ∀ n, P₂ n, ∀ n, P₃ n].TFAE :=
  forall_tfae [_, _, _] H
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantdd532d3556143d96d59449e0dd4694e207481f3157e67be713c0175007cb388a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variantdd532d3556143d96d59449e0dd4694e207481f3157e67be713c0175007cb388a.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52feb73cb5793438470d0ffda25397e5e65e1540` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
