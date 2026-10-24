# Nonempty.cons_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49c19a9b-b055-b574-29b2-0e30c4d77ff0",
  "kind": "theorem",
  "lexical_name": "Nonempty.cons_induction",
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
  "slug": "nonempty-cons-induction--96c6a20901033e558cd6227b",
  "source": {
    "blob": "2964506558cb4b2f5e18df90ffc0c6c04e5dda7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 548,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Insert/Variant7bb6bda89ac7e9867e9b17cd6152dc3343971fae0f4ede0500075ca7037f5148.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96c6a20901033e558cd6227b8d4b942b056ea95fd77f49928a8169fb864e0255",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Insert/Variant7bb6bda89ac7e9867e9b17cd6152dc3343971fae0f4ede0500075ca7037f5148.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49c19a9b-b055-b574-29b2-0e30c4d77ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 548–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nonempty.cons_induction {α : Type*} {motive : ∀ s : Finset α, s.Nonempty → Prop}
    (singleton : ∀ a, motive {a} (singleton_nonempty _))
    (cons : ∀ a s (h : a ∉ s) (hs), motive s hs → motive (Finset.cons a s h) (cons_nonempty h))
    {s : Finset α} (hs : s.Nonempty) : motive s hs := by
  induction s using Finset.cons_induction with
  | empty => exact (not_nonempty_empty hs).elim
  | cons a t ha h =>
    obtain rfl | ht := t.eq_empty_or_nonempty
    · exact singleton a
    · exact cons a t ha ht (h ht)

-- We use a fresh `α` here to exclude the unneeded `DecidableEq α` instance from the section.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Insert/Variant7bb6bda89ac7e9867e9b17cd6152dc3343971fae0f4ede0500075ca7037f5148.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Insert/Variant7bb6bda89ac7e9867e9b17cd6152dc3343971fae0f4ede0500075ca7037f5148.lean#L548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2964506558cb4b2f5e18df90ffc0c6c04e5dda7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
