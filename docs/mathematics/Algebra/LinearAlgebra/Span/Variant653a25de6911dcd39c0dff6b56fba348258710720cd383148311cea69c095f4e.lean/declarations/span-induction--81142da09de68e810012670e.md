# span_induction'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffcc5480-1a15-a1c1-2c46-af0a70f2c9d6",
  "kind": "theorem",
  "lexical_name": "span_induction'",
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
  "slug": "span-induction--81142da09de68e810012670e",
  "source": {
    "blob": "3f92280d5936b02750358be10db05af1822786fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 176,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81142da09de68e810012670eb39c0d9ea7b66e4f38b9234006c13cf8db481ef8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffcc5480-1a15-a1c1-2c46-af0a70f2c9d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_induction' {p : ∀ x, x ∈ span R s → Prop}
    (Hs : ∀ (x) (h : x ∈ s), p x (subset_span h))
    (H0 : p 0 (Submodule.zero_mem _))
    (H1 : ∀ x hx y hy, p x hx → p y hy → p (x + y) (Submodule.add_mem _ ‹_› ‹_›))
    (H2 : ∀ (a : R) (x hx), p x hx → p (a • x) (Submodule.smul_mem _ _ ‹_›)) {x}
    (hx : x ∈ span R s) : p x hx := by
  refine' Exists.elim _ fun (hx : x ∈ span R s) (hc : p x hx) => hc
  refine'
    span_induction hx (fun m hm => ⟨subset_span hm, Hs m hm⟩) ⟨zero_mem _, H0⟩
      (fun x y hx hy =>
        Exists.elim hx fun hx' hx =>
          Exists.elim hy fun hy' hy => ⟨add_mem hx' hy', H1 _ _ _ _ hx hy⟩)
      fun r x hx => Exists.elim hx fun hx' hx => ⟨smul_mem _ _ hx', H2 r _ _ hx⟩
#align submodule.span_induction' Submodule.span_induction'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variant653a25de6911dcd39c0dff6b56fba348258710720cd383148311cea69c095f4e.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f92280d5936b02750358be10db05af1822786fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
