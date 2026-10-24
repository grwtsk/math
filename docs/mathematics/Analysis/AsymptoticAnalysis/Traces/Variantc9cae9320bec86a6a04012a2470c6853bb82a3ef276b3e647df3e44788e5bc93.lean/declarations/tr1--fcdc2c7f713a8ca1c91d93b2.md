# tr1'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9e5257db-69f6-d390-b370-cbd690d99ef2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90a4c39b-212e-5b7d-7396-26620bf6a6b2",
  "kind": "theorem",
  "lexical_name": "tr1'",
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
  "slug": "tr1--fcdc2c7f713a8ca1c91d93b2",
  "source": {
    "blob": "29d12a9fe1b528ebf619cae5991a5f852ed80f9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 311,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fcdc2c7f713a8ca1c91d93b23169e8b2c125d766aafeeeb8d2e3caf1c377950f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90a4c39b-212e-5b7d-7396-26620bf6a6b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr1' : D.trG ~[atTop] (fun T => D.aT T * P.L T * D.Ncnt T) := by
  show (D.trG - fun T => D.aT T * P.L T * D.Ncnt T) =o[atTop] _
  have hlam := h.lam_pos
  refine evBound_isLittleO_of_le_mul (E := fun T => 8 * π * T ^ (P.lam / 2 - 1)) h.prop_trace
    (by simpa using (tendsto_rpow_half_lam_sub_one P (by linarith [h.lam_lt_one])).const_mul (8 * π)) ?_
  filter_upwards [regime h, Ncnt_lower h, h.ab_range] with T ⟨hT, hl, _u0, hL, _u1, _u2, _u3, _u4⟩ hN hab
  obtain ⟨hb2, hba, _u0, _u1⟩ := hab
  have hπ := Real.pi_pos
  have hT0 : 0 < T := by linarith
  have ha2 : 1 / 2 ≤ D.aT T := hb2.trans hba
  have hs : Real.sqrt (P.X T) ≤ T ^ (P.lam / 2 - 1) * T := by
    rw [rpow_half_sub_one_mul hT0]; exact sqrt_X_le_rpow P hlam hT0
  have hTl : T * l T ≤ 4 * π * D.Ncnt T := by
    rw [div_le_iff₀ (by positivity)] at hN; linarith
  calc P.L T * Real.sqrt (P.X T) * l T ≤ P.L T * (T ^ (P.lam / 2 - 1) * T) * l T := by gcongr
    _ = T ^ (P.lam / 2 - 1) * P.L T * (T * l T) := by ring
    _ ≤ T ^ (P.lam / 2 - 1) * P.L T * (4 * π * D.Ncnt T) := by gcongr
    _ = 8 * π * T ^ (P.lam / 2 - 1) * ((1 / 2) * P.L T * D.Ncnt T) := by ring
    _ ≤ 8 * π * T ^ (P.lam / 2 - 1) * (D.aT T * P.L T * D.Ncnt T) := by
        have : 0 ≤ D.Ncnt T := by
          have : (0:ℝ) ≤ T * l T / (4 * π) := by positivity
          linarith
        gcongr

/-- the first form of [eq:tr2]: all §5 remainders collected into `O(R_T)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Traces/Variantc9cae9320bec86a6a04012a2470c6853bb82a3ef276b3e647df3e44788e5bc93.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29d12a9fe1b528ebf619cae5991a5f852ed80f9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
