# intervalIntegrable_of_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2504147e2230a26eb804b0898004d0186c4e36a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 602,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15f84157-9ac6-dc7c-3005-b3de8c43cc13",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9e5bafa-0b25-ba3c-cc05-19cb68cde33a",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_of_odd",
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
  "slug": "intervalintegrable-of-odd--26e4486c06b21524e2206471",
  "source": {
    "blob": "2504147e2230a26eb804b0898004d0186c4e36a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 602,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26e4486c06b21524e22064719116b8cac24681fb3e7e5c88127a55eddc0e1070",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9e5bafa-0b25-ba3c-cc05-19cb68cde33a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_of_odd
    (h₁f : ∀ x, -f x = f (-x)) (h₂f : ∀ x, 0 < x → IntervalIntegrable f volume 0 x) {a b : ℝ}
    (ha : ‖f (min 0 a)‖ₑ ≠ ∞ := by finiteness) (hb : ‖f (min 0 b)‖ₑ ≠ ∞ := by finiteness) :
    IntervalIntegrable f volume a b :=
  -- Split integral and apply lemma
  (intervalIntegrable_of_odd₀ h₁f h₂f ha).symm.trans (intervalIntegrable_of_odd₀ h₁f h₂f hb)

end

/-!
## Limits of intervals
-/

/-- Let `l'` be a measurably generated filter; let `l` be a of filter such that each `s ∈ l'`
eventually includes `Ioc u v` as both `u` and `v` tend to `l`. Let `μ` be a measure finite at `l'`.

Suppose that `f : ℝ → E` has a finite limit at `l' ⊓ ae μ`. Then `f` is interval integrable on
`u..v` provided that both `u` and `v` tend to `l`.

Typeclass instances allow Lean to find `l'` based on `l` but not vice versa, so
`apply Tendsto.eventually_intervalIntegrable_ae` will generate goals `Filter ℝ` and
`TendstoIxxClass Ioc ?m_1 l'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant97e7a2efda146d0d1280f23d660cc07655dd7c48b51631752e9aa94deaa18ab9.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2504147e2230a26eb804b0898004d0186c4e36a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
