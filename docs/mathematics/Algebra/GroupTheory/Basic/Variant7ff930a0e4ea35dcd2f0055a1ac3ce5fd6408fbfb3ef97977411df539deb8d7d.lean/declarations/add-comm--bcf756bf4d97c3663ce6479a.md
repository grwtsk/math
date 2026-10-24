# add'_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "78cee56c17c6fec54af0c6b06992ae39ae350b14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 557,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58f089db-0c87-4ae9-56b7-10bdefe6f73d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d007349-97cb-03c6-6c1a-3f494bffe269",
  "kind": "theorem",
  "lexical_name": "add'_comm",
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
  "slug": "add-comm--bcf756bf4d97c3663ce6479a",
  "source": {
    "blob": "78cee56c17c6fec54af0c6b06992ae39ae350b14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 557,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcf756bf4d97c3663ce6479ab6d30bd10ea8af172073f14316c2a65719155378",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d007349-97cb-03c6-6c1a-3f494bffe269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem add'_comm (r₁ r₂ : R) (s₁ s₂ : S) :
    add' r₁ s₁ (r₂ /ₒ s₂) = add' r₂ s₂ (r₁ /ₒ s₁) := by
  -- Porting note: `assoc_rw` & `noncomm_ring` were not ported yet
  -- Porting note: `Quotient.mk'` required
  simp only [add', oreDiv, add'', Quotient.mk', Quotient.lift_mk]
  -- Porting note: `Quotient.eq` should be used in `rw` instead of `simp`
  rw [Quotient.eq]
  have hb := ore_eq (↑s₂) s₁
  -- Porting note: `set ... with h; rw [← h]; clear h`s aren't required anymore
  set rb := oreNum (↑s₂) s₁
  set sb := oreDenom (↑s₂) s₁
  have ha := ore_eq (↑s₁) s₂
  set ra := oreNum (↑s₁) s₂
  set sa := oreDenom (↑s₁) s₂
  rcases oreCondition ra sb with ⟨rc, sc, hc⟩
  -- r#, s#
  have : (s₁ : R) * (rb * rc) = s₁ * (sa * sc) := by
    rw [← mul_assoc, ← hb, mul_assoc, ← hc, ← mul_assoc, ← ha, mul_assoc]
  rcases ore_left_cancel _ _ s₁ this with ⟨sd, hd⟩
  -- s+
  use sc * sd
  use rc * sd
  dsimp
  constructor
  · rw [add_mul, add_mul, add_comm, mul_assoc (a := r₁) (b := (sa : R)),
      ← mul_assoc (a := (sa : R)), ← hd, mul_assoc (a := r₂) (b := ra),
      ← mul_assoc (a := ra) (b := (sc : R)), hc]
    simp only [mul_assoc]
  · rw [mul_assoc, ← mul_assoc (sa : R), ← hd, hb]
    simp only [mul_assoc]

/-- The addition on the Ore localization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant7ff930a0e4ea35dcd2f0055a1ac3ce5fd6408fbfb3ef97977411df539deb8d7d.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78cee56c17c6fec54af0c6b06992ae39ae350b14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
