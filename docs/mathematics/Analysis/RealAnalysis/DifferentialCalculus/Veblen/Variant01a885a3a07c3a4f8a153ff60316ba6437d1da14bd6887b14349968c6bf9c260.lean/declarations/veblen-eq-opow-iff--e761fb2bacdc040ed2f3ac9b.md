# veblen_eq_opow_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "96cbf8dcc1aead2a64b8db07df6f0cbd2aca5618",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 513,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/01/01a885a3a07c3a4f8a153ff60316ba6437d1da14bd6887b14349968c6bf9c260.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:434fa2b6-cf78-9108-2922-44ac9a966502",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a1e363dd-8b91-7553-3e2c-8a97440b5d18",
  "kind": "theorem",
  "lexical_name": "veblen_eq_opow_iff",
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
  "slug": "veblen-eq-opow-iff--e761fb2bacdc040ed2f3ac9b",
  "source": {
    "blob": "96cbf8dcc1aead2a64b8db07df6f0cbd2aca5618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 513,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variant01a885a3a07c3a4f8a153ff60316ba6437d1da14bd6887b14349968c6bf9c260.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e761fb2bacdc040ed2f3ac9b4bc6a8ab1e01d439747a89134a4d92e791dd90ca",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variant01a885a3a07c3a4f8a153ff60316ba6437d1da14bd6887b14349968c6bf9c260.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1e363dd-8b91-7553-3e2c-8a97440b5d18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem veblen_eq_opow_iff (h : a < veblen o a) :
    veblen o a = ω ^ x ↔ invVeblen₁ x = o ∧ invVeblen₂ x = a := by
  refine ⟨?_, fun ⟨hx, ha⟩ ↦ ?_⟩
  · obtain rfl | ho := eq_zero_or_pos o
    · rw [veblen_zero] at h
      have := invVeblen₁_of_lt_opow h
      have := invVeblen₂_of_lt_opow h
      aesop
    · rw [← veblen_veblen_of_lt ho, veblen_zero_apply, opow_right_inj one_lt_omega0]
      rintro rfl
      simp [invVeblen₁_veblen h, invVeblen₂_veblen ho.ne' h]
  · convert! ← veblen_invVeblen₁_invVeblen₂ x

/-! ### Epsilon function -/

/-- The epsilon function enumerates the fixed points of `ω ^ ⬝`.
This is an abbreviation for `veblen 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variant01a885a3a07c3a4f8a153ff60316ba6437d1da14bd6887b14349968c6bf9c260.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variant01a885a3a07c3a4f8a153ff60316ba6437d1da14bd6887b14349968c6bf9c260.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96cbf8dcc1aead2a64b8db07df6f0cbd2aca5618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
