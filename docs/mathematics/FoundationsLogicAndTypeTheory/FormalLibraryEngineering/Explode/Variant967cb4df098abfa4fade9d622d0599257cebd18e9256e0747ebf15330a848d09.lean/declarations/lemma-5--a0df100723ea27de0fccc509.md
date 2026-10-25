# lemma_5'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f64884ec-b9d6-30a7-16b7-560b8f9b2404",
  "kind": "lemma",
  "lexical_name": "lemma_5'",
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
  "slug": "lemma-5--a0df100723ea27de0fccc509",
  "source": {
    "blob": "e614db963fabca706d544e585b6a06041c30705b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant967cb4df098abfa4fade9d622d0599257cebd18e9256e0747ebf15330a848d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0df100723ea27de0fccc5095adf3e0891c8d15e5d2702befaaa165055f7ea53",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant967cb4df098abfa4fade9d622d0599257cebd18e9256e0747ebf15330a848d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f64884ec-b9d6-30a7-16b7-560b8f9b2404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lemma_5' : ∀ p q : Prop, (¬q → ¬p) → (p → q) :=
  λ p => λ q =>
  λ hNQNP =>
    Or.elim (Classical.em q)
    (λ hQ hP => hQ)
    (λ hNQ hP =>
      let hNP := hNQNP hNQ
      False.elim (hNP hP))

/--
info: lemma_5' : ∀ (p q : Prop), (¬q → ¬p) → p → q

0 │        │ p            ├ Prop
1 │        │ q            ├ Prop
2 │        │ hNQNP        ├ ¬q → ¬p
3 │        │ Classical.em │ q ∨ ¬q
4 │        │ hQ           │ ┌ q
5 │        │ hP           │ ├ p
6 │4,5,4   │ ∀I           │ q → p → q
7 │        │ hNQ          │ ┌ ¬q
8 │        │ hP           │ ├ p
9 │2,7     │ ∀E           │ │ ¬p
11│9,8     │ ∀E           │ │ False
12│11      │ False.elim   │ │ q
13│7,8,12  │ ∀I           │ ¬q → p → q
14│3,6,13  │ Or.elim      │ p → q
15│0,1,2,14│ ∀I           │ ∀ (p q : Prop), (¬q → ¬p) → p → q
-/
#guard_msgs in #explode lemma_5'

section
variable (p q : Prop)

/--
info: fun hp hnp ↦ hnp hp : p → (p → q) → q

0│     │ hp  ├ p
1│     │ hnp ├ p → q
2│1,0  │ ∀E  │ q
3│0,1,2│ ∀I  │ p → (p → q) → q
-/
#guard_msgs in #explode fun (hp : p) (hnp : p → q) => hnp hp

/--
info: fun hNQNP ↦
  Or.elim (Classical.em q) (fun hQ hP ↦ hQ) fun hNQ hP ↦
    let hNP := hNQNP hNQ;
    False.elim (hNP hP) : (¬q → ¬p) → p → q

0 │      │ hNQNP        ├ ¬q → ¬p
1 │      │ Classical.em │ q ∨ ¬q
2 │      │ hQ           │ ┌ q
3 │      │ hP           │ ├ p
4 │2,3,2 │ ∀I           │ q → p → q
5 │      │ hNQ          │ ┌ ¬q
6 │      │ hP           │ ├ p
7 │0,5   │ ∀E           │ │ ¬p
9 │7,6   │ ∀E           │ │ False
10│9     │ False.elim   │ │ q
11│5,6,10│ ∀I           │ ¬q → p → q
12│1,4,11│ Or.elim      │ p → q
13│0,12  │ ∀I           │ (¬q → ¬p) → p → q
-/
#guard_msgs in #explode fun (hNQNP : ¬q → ¬p) =>
  Or.elim (Classical.em q)
    (λ hQ hP => hQ)
    (λ hNQ hP =>
      let hNP := hNQNP hNQ
      False.elim (hNP hP))

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant967cb4df098abfa4fade9d622d0599257cebd18e9256e0747ebf15330a848d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant967cb4df098abfa4fade9d622d0599257cebd18e9256e0747ebf15330a848d09.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e614db963fabca706d544e585b6a06041c30705b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
