# strictConvexOn_iff_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7032cff-7e58-2ba9-bec3-520a282f6eda",
  "kind": "theorem",
  "lexical_name": "strictConvexOn_iff_div",
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
  "slug": "strictconvexon-iff-div--33c69d7efcf8716b3b618bbb",
  "source": {
    "blob": "f96a57d1735eca51c569b7d61324680304915de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1079,
    "line": 1067,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33c69d7efcf8716b3b618bbb1d6f2a63003061b8b347bfb35e283276095c267c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7032cff-7e58-2ba9-bec3-520a282f6eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1067–1079.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictConvexOn_iff_div {f : E → β} :
    StrictConvexOn 𝕜 s f ↔
      Convex 𝕜 s ∧ ∀ ⦃x⦄, x ∈ s → ∀ ⦃y⦄, y ∈ s → x ≠ y → ∀ ⦃a b : 𝕜⦄, 0 < a → 0 < b →
        f ((a / (a + b)) • x + (b / (a + b)) • y) < (a / (a + b)) • f x + (b / (a + b)) • f y :=
  and_congr Iff.rfl ⟨by
    intro h x hx y hy hxy a b ha hb
    have hab := add_pos ha hb
    apply h hx hy hxy (div_pos ha hab) (div_pos hb hab)
    rw [← add_div, div_self hab.ne'], by
    intro h x hx y hy hxy a b ha hb hab
    simpa [hab, zero_lt_one] using h hx hy hxy ha hb⟩
#align strict_convex_on_iff_div strictConvexOn_iff_div

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean#L1067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96a57d1735eca51c569b7d61324680304915de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
