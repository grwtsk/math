# entry_core_mirror

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f8720428b276926fb1310827167a982a1006e88",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f3fe885-1c3a-3684-7ab7-d159f9f2397e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc1998a6-e258-995f-bec0-9346a5e3e8d3",
  "kind": "theorem",
  "lexical_name": "entry_core_mirror",
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
  "slug": "entry-core-mirror--dfe02b9f9df72f0e25c322dd",
  "source": {
    "blob": "4f8720428b276926fb1310827167a982a1006e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 199,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfe02b9f9df72f0e25c322dd56b662f8392fb39ed8a9ffc54ac88f36b5a1e571",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc1998a6-e258-995f-bec0-9346a5e3e8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem entry_core_mirror {w g : ℝ → ℂ} {a b T ε Cg W W' : ℝ} (hT : 0 < T) (ha : T ≤ a) (hb : T ≤ b)
    (hwc : Continuous w) (hgc : Continuous g)
    (hε : 0 ≤ ε) (hCg : 0 ≤ Cg) (hW : 0 ≤ W) (hW' : 0 ≤ W')
    (hw : ∀ t, ‖w t‖ ≤ W * (cauchyK (-a) t * cauchyK (-b) t))
    (hw' : ∀ t, (|t + a| + |t + b|) * ‖w t‖ ≤ W' * (cauchyK (-a) t * cauchyK (-b) t))
    (hg : ∀ t, ‖g t‖ ≤ Cg)
    (hgε : ∀ t, t ≤ -(T / 4) → ‖g t‖ ≤ ε * (|t + (a + b) / 2| + 1)) :
    Integrable (fun t => w t * g t) ∧
    ‖∫ t, w t * g t‖
      ≤ ε * (W + W' / 2) * (8 * Real.pi / (4 + (a - b) ^ 2)) + Cg * W * (16 * Real.pi / (9 * T ^ 2)) := by
  have hK : ∀ c t : ℝ, cauchyK (-c) (-t) = cauchyK c t := by
    intro c t; unfold cauchyK; ring_nf
  have h := entry_core (w := fun t => w (-t)) (g := fun t => g (-t)) hT ha hb
    (hwc.comp continuous_neg) (hgc.comp continuous_neg) hε hCg hW hW'
    (fun t => by simpa [hK] using hw (-t))
    (fun t => by
      have := hw' (-t)
      simp only [hK] at this
      have e1 : |(-t) + a| = |t - a| := by rw [← abs_neg]; ring_nf
      have e2 : |(-t) + b| = |t - b| := by rw [← abs_neg]; ring_nf
      rwa [e1, e2] at this)
    (fun t => hg (-t))
    (fun t ht => by
      have := hgε (-t) (by linarith)
      have e : |(-t) + (a + b) / 2| = |t - (a + b) / 2| := by rw [← abs_neg]; ring_nf
      rwa [e] at this)
  obtain ⟨hint, hbound⟩ := h
  have hint' : Integrable (fun t => w t * g t) := by
    have := hint.comp_neg
    simpa using this
  refine ⟨hint', ?_⟩
  have e : ∫ t, w t * g t = ∫ t, w (-t) * g (-t) :=
    (integral_neg_eq_self (fun t => w t * g t) volume).symm
  rw [e]
  exact hbound

end XiPrime
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EntryError/Variante04564e480835217e2de8f50aaa2bebf2262af1039976c09b9e98164490e55d5.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f8720428b276926fb1310827167a982a1006e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
