# expTaylorCoeffsAux_eq_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78b0876a-dd21-7c9d-5736-e9aa51af5f1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc00c54f-28cb-0450-8153-b5f77ca19f85",
  "kind": "lemma",
  "lexical_name": "expTaylorCoeffsAux_eq_range",
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
  "slug": "exptaylorcoeffsaux-eq-range--a607511e9b862cc2f74f372f",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a607511e9b862cc2f74f372f974c1978974db84e4634f702d4d17811a31a8bc1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc00c54f-28cb-0450-8153-b5f77ca19f85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma expTaylorCoeffsAux_eq_range (n k : ℕ) :
    expTaylorCoeffsAux n k (1 / ratFactorial k) =
      (List.range (n + 1)).map (fun i => 1 / ratFactorial (i + k)) := by
  induction n generalizing k with
  | zero =>
      simp [expTaylorCoeffsAux]
  | succ n ih =>
      have hstep : (ratFactorial k)⁻¹ / (k + 1) = (ratFactorial (k + 1))⁻¹ := by
        -- (1/k!) / (k+1) = 1/(k+1)!
        simp [ratFactorial_succ, div_eq_mul_inv, mul_comm]
      calc
        expTaylorCoeffsAux (n + 1) k (1 / ratFactorial k)
            = (1 / ratFactorial k) ::
                expTaylorCoeffsAux n (k + 1) ((1 / ratFactorial k) / (k + 1)) := by
                  rfl
        _ = (1 / ratFactorial k) ::
                expTaylorCoeffsAux n (k + 1) ((ratFactorial k)⁻¹ / (k + 1)) := by
                  simp [one_div]
        _ = (1 / ratFactorial k) ::
                expTaylorCoeffsAux n (k + 1) (ratFactorial (k + 1))⁻¹ := by
                  simp [hstep]
        _ = (1 / ratFactorial k) ::
              (List.range (n + 1)).map (fun i => (ratFactorial (i + (k + 1)))⁻¹) := by
                  simpa [one_div] using (ih (k + 1))
        _ = (List.range (n + 2)).map (fun i => 1 / ratFactorial (i + k)) := by
            -- unfold the range map at the front
            have hmap := map_range_succ (fun i => 1 / ratFactorial (i + k)) (n + 1)
            -- rewrite and simplify
            simpa [one_div, Nat.add_assoc, Nat.add_left_comm, Nat.add_comm] using hmap.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
