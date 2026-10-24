# verify_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b6d2d02-22e7-c39b-b0ca-adb3e246155b",
  "kind": "theorem",
  "lexical_name": "verify_sound",
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
  "slug": "verify-sound--acc8620f8853bb51f5524fce",
  "source": {
    "blob": "c80255057572b900ca12d55a3b42d8162c217e1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 140,
    "path": "GRWTSK/Algebra/BigOperators/CheckedContiguousBlocks.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acc8620f8853bb51f5524fce4e99199ab76a4b01588050d0db4ca8b7457452e4",
  "verification": {
    "reference": "docs/verification/Algebra/BigOperators/CheckedContiguousBlocks.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b6d2d02-22e7-c39b-b0ca-adb3e246155b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_sound {test : ℕ → Bool} {term : ℕ → ℤ}
    {start : ℕ} {widths : List ℕ} {claims : List ℤ}
    (h : verify test term start widths claims = true) :
    claims.length = widths.length ∧ allRange test start widths.sum = true ∧
      sumRange term start widths.sum = claims.sum := by
  induction widths generalizing start claims with
  | nil => cases claims <;> simp_all [verify,allRange,sumRange]
  | cons w ws ih =>
      cases claims with
      | nil => simp [verify] at h
      | cons k ks =>
          have hh : allRange test start w = true ∧ sumRange term start w = k ∧
              verify test term (start+w) ws ks = true := by
            simpa only [verify,Bool.and_eq_true,decide_eq_true_eq] using h
          obtain ⟨hlen,hall,hsum⟩ := ih hh.2.2
          refine ⟨by simpa using hlen, ?_, ?_⟩
          · simp only [List.sum_cons,allRange_add,hh.1,hall,Bool.true_and]
          · simp only [List.sum_cons,sumRange_add,hh.2.1,hsum]

/-- Canonical summaries are computed from the fixed term function, not labels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BigOperators/CheckedContiguousBlocks.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BigOperators/CheckedContiguousBlocks.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c80255057572b900ca12d55a3b42d8162c217e1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
