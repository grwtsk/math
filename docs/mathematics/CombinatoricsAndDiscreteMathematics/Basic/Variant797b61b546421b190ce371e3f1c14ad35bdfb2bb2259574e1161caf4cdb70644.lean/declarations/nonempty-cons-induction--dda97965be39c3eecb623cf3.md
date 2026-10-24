# Nonempty.cons_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e91c6986-3202-1b65-380c-a383b433bebc",
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
  "slug": "nonempty-cons-induction--dda97965be39c3eecb623cf3",
  "source": {
    "blob": "b60684812356eac00940fb922aa14757ea39b085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1267,
    "line": 1256,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dda97965be39c3eecb623cf38ee602f4791fa76fa5c0ff8b69184b7ef9b03ac5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e91c6986-3202-1b65-380c-a383b433bebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1256–1267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nonempty.cons_induction {α : Type*} {p : ∀ s : Finset α, s.Nonempty → Prop}
    (h₀ : ∀ a, p {a} (singleton_nonempty _))
    (h₁ : ∀ ⦃a⦄ (s) (h : a ∉ s) (hs), p s hs → p (Finset.cons a s h) (nonempty_cons h))
    {s : Finset α} (hs : s.Nonempty) : p s hs := by
  induction' s using Finset.cons_induction with a t ha h
  · exact (not_nonempty_empty hs).elim
  obtain rfl | ht := t.eq_empty_or_nonempty
  · exact h₀ a
  · exact h₁ t ha ht (h ht)
#align finset.nonempty.cons_induction Finset.Nonempty.cons_induction

/-- Inserting an element to a finite set is equivalent to the option type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean#L1256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60684812356eac00940fb922aa14757ea39b085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
