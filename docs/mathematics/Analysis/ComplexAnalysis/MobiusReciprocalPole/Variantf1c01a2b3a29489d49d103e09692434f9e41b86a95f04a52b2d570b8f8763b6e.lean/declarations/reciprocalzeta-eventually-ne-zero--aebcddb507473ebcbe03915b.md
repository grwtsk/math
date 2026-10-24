# reciprocalZeta_eventually_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9da01353-02b6-84be-644c-44e75a96b9b8",
  "kind": "theorem",
  "lexical_name": "reciprocalZeta_eventually_ne_zero",
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
  "slug": "reciprocalzeta-eventually-ne-zero--aebcddb507473ebcbe03915b",
  "source": {
    "blob": "e210f0a7b4efd9730981b3b1533d6b3a36568715",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aebcddb507473ebcbe03915ba17405f45a331517d5f435bd3b49f25bcdfdba3c",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9da01353-02b6-84be-644c-44e75a96b9b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalZeta_eventually_ne_zero :
    ∀ᶠ s in 𝓝[≠] 0, reciprocalZeta s ≠ 0 ∧ riemannZeta (1 + s) ≠ 0 := by
  have hf := zetaPoleFactor_analyticAt_zero.continuousAt.eventually_ne
    (by simp : zetaPoleFactor 0 ≠ 0)
  filter_upwards [hf.filter_mono nhdsWithin_le_nhds, self_mem_nhdsWithin] with s hs hs0
  have hr : reciprocalZeta s ≠ 0 := by
    rw [reciprocalZeta_eq_div_factor]
    exact div_ne_zero hs0 hs
  exact ⟨hr, by simpa only [reciprocalZeta_off s hs0, ne_eq, inv_eq_zero] using hr⟩

/-- The literal logarithmically smoothed Perron integrand, including its source zeta factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPole/Variantf1c01a2b3a29489d49d103e09692434f9e41b86a95f04a52b2d570b8f8763b6e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e210f0a7b4efd9730981b3b1533d6b3a36568715` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
