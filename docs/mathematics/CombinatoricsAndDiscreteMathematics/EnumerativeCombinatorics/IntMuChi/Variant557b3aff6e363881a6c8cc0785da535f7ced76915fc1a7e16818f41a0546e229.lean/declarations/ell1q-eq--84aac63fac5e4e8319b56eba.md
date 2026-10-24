# ell1q_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b2456f220cacdefa91b0e945a06455de9992333",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:afc89e4c-2a55-ef86-f7d0-e06910ad281c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:382ca74b-1c74-90f0-3285-77001f2796ea",
  "kind": "lemma",
  "lexical_name": "ell1q_eq",
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
  "slug": "ell1q-eq--84aac63fac5e4e8319b56eba",
  "source": {
    "blob": "8b2456f220cacdefa91b0e945a06455de9992333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 441,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84aac63fac5e4e8319b56ebad47824215046f295220571bd0cd4913d941cb365",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:382ca74b-1c74-90f0-3285-77001f2796ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ell1q_eq (hq : 1 ≤ q) {T : ℝ} (hT : 0 < T) : ell1q q T = ell1 T + Real.log q := by
  unfold ell1q ell1 l
  have hq0 : (0 : ℝ) < q := by exact_mod_cast hq
  rw [show (q : ℝ) * T / (2 * Real.pi) = q * (T / (2 * Real.pi)) by ring,
    Real.log_mul hq0.ne' (by positivity)]
  ring


/-! ## q-uniform versions for μ_χ (constants depend only on the Stirling constant) -/

/-- **q-uniform GammaFactsChiBounded.int_mu**: given the Stirling constant C (q-free), the error
constant is C and the threshold is 1, for every κ, q ≥ 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/IntMuChi/Variant557b3aff6e363881a6c8cc0785da535f7ced76915fc1a7e16818f41a0546e229.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b2456f220cacdefa91b0e945a06455de9992333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
