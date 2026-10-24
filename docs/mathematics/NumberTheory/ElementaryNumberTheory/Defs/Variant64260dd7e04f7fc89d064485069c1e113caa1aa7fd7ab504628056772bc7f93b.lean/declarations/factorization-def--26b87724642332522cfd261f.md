# factorization_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c1f897d6-1f5b-3978-657f-7a8d46393abf",
  "kind": "theorem",
  "lexical_name": "factorization_def",
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
  "slug": "factorization-def--26b87724642332522cfd261f",
  "source": {
    "blob": "083e01712b4ff4005135b80928b7b11e5245b218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:26b87724642332522cfd261f2240f398be233cc8c8c77d98fee7bab2434d7444",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f897d6-1f5b-3978-657f-7a8d46393abf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorization_def (n : ℕ) {p : ℕ} (pp : p.Prime) : n.factorization p = padicValNat p n := by
  rw [← primeFactorsList_count_eq]
  rcases n.eq_zero_or_pos with (rfl | hn0)
  · simp [count]
  apply _root_.le_antisymm
  · rw [le_padicValNat_iff_replicate_subperm_primeFactorsList pp hn0.ne']
    exact List.replicate_sublist_iff.mpr le_rfl |>.subperm
  · rw [← Nat.lt_add_one_iff, lt_iff_not_ge,
      le_padicValNat_iff_replicate_subperm_primeFactorsList pp hn0.ne']
    intro h
    have := h.count_le p
    simp at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant64260dd7e04f7fc89d064485069c1e113caa1aa7fd7ab504628056772bc7f93b.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083e01712b4ff4005135b80928b7b11e5245b218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
