# strictConcaveOn_iff_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c63bc419-0e36-ec6c-4e00-da9aee15f983",
  "kind": "theorem",
  "lexical_name": "strictConcaveOn_iff_div",
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
  "slug": "strictconcaveon-iff-div--8a738a6a518448c3e4825ce5",
  "source": {
    "blob": "f96a57d1735eca51c569b7d61324680304915de3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1097,
    "line": 1080,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a738a6a518448c3e4825ce5486367e6498c420365bed02832234c70d74c9098",
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

Occurrence: `result:c63bc419-0e36-ec6c-4e00-da9aee15f983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1080–1097.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictConcaveOn_iff_div {f : E → β} :
    StrictConcaveOn 𝕜 s f ↔
      Convex 𝕜 s ∧ ∀ ⦃x⦄, x ∈ s → ∀ ⦃y⦄, y ∈ s → x ≠ y → ∀ ⦃a b : 𝕜⦄, 0 < a → 0 < b →
        (a / (a + b)) • f x + (b / (a + b)) • f y < f ((a / (a + b)) • x + (b / (a + b)) • y) :=
  @strictConvexOn_iff_div _ _ βᵒᵈ _ _ _ _ _ _ _
#align strict_concave_on_iff_div strictConcaveOn_iff_div

end SMul

end OrderedAddCommMonoid

end LinearOrderedField

section OrderIso

variable [OrderedSemiring 𝕜] [OrderedAddCommMonoid α] [SMul 𝕜 α]
  [OrderedAddCommMonoid β] [SMul 𝕜 β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Function/Variante72cc95888264e1981603ef5e9f2f3657bf6f6b4cd1b5d1b89482537088db18c.lean#L1080).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f96a57d1735eca51c569b7d61324680304915de3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
