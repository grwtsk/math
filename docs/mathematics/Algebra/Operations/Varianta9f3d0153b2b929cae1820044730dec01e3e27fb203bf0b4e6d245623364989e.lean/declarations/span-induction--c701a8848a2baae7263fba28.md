# span_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d54632d4-d88b-e94b-2bf8-b858c87acbdc",
  "kind": "theorem",
  "lexical_name": "span_induction",
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
  "slug": "span-induction--c701a8848a2baae7263fba28",
  "source": {
    "blob": "6df2815c25807fc32d429257dc5ff09446d2fa6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 95,
    "path": "GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c701a8848a2baae7263fba2897b90ae71197af4c7d32c6bd60b24f50eb2bb39a",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d54632d4-d88b-e94b-2bf8-b858c87acbdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_induction {s : Set R}
    {p : (x : R) → x ∈ TwoSidedIdeal.span s → Prop}
    (mem : ∀ (x) (h : x ∈ s), p x (subset_span h))
    (zero : p 0 (zero_mem _))
    (add : ∀ x y hx hy, p x hx → p y hy → p (x + y) (add_mem _ hx hy))
    (neg : ∀ x hx, p x hx → p (-x) (neg_mem _ hx))
    (left_absorb : ∀ a x hx, p x hx → p (a * x) (mul_mem_left _ _ _ hx))
    (right_absorb : ∀ b x hx, p x hx → p (x * b) (mul_mem_right _ _ _ hx))
    {x : R} (hx : x ∈ span s) : p x hx :=
  let J : TwoSidedIdeal R := .mk'
    {x | ∃ hx, p x hx}
    ⟨zero_mem _, zero⟩
    (fun ⟨hx1, hx2⟩ ⟨hy1, hy2⟩ ↦ ⟨add_mem _ hx1 hy1, add _ _ hx1 hy1 hx2 hy2⟩)
    (fun ⟨hx1, hx2⟩ ↦ ⟨neg_mem _ hx1, neg _ hx1 hx2⟩)
    (fun {x' y'} ⟨hy1, hy2⟩ ↦ ⟨mul_mem_left _ _ _ hy1, left_absorb _ _ _ hy2⟩)
    (fun {x' y'} ⟨hx1, hx2⟩ ↦ ⟨mul_mem_right _ _ _ hx1, right_absorb _ _ _ hx2⟩)
  span_le (s := s) (I := J) |>.2
    (fun x hx ↦ ⟨by simpa using (mem_span_iff.2 fun I a ↦ a hx), by simp_all⟩) hx
      |>.elim fun _ ↦ by simp

/--
Pushout of a two-sided ideal. Defined as the span of the image of a two-sided ideal under a ring
homomorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Varianta9f3d0153b2b929cae1820044730dec01e3e27fb203bf0b4e6d245623364989e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df2815c25807fc32d429257dc5ff09446d2fa6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
