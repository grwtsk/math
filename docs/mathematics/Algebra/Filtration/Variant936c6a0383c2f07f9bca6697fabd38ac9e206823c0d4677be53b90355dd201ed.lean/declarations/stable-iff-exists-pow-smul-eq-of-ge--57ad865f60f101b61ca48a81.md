# stable_iff_exists_pow_smul_eq_of_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11e697fb-5540-baca-20f1-adba65965d8d",
  "kind": "theorem",
  "lexical_name": "stable_iff_exists_pow_smul_eq_of_ge",
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
  "slug": "stable-iff-exists-pow-smul-eq-of-ge--57ad865f60f101b61ca48a81",
  "source": {
    "blob": "3ae4648b974955c12ffea693cd3e46f602c47bf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 239,
    "path": "GRWTSK/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57ad865f60f101b61ca48a813bdd901a8ae3b215e45077d954cc92a40b8da67f",
  "verification": {
    "reference": "docs/verification/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e697fb-5540-baca-20f1-adba65965d8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stable_iff_exists_pow_smul_eq_of_ge :
    F.Stable ↔ ∃ n₀, ∀ n ≥ n₀, F.N n = I ^ (n - n₀) • F.N n₀ := by
  refine' ⟨Stable.exists_pow_smul_eq_of_ge, fun h => ⟨h.choose, fun n hn => _⟩⟩
  rw [h.choose_spec n hn, h.choose_spec (n + 1) (by linarith), smul_smul, ← pow_succ,
    tsub_add_eq_add_tsub hn]
#align ideal.filtration.stable_iff_exists_pow_smul_eq_of_ge Ideal.Filtration.stable_iff_exists_pow_smul_eq_of_ge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Filtration/Variant936c6a0383c2f07f9bca6697fabd38ac9e206823c0d4677be53b90355dd201ed.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ae4648b974955c12ffea693cd3e46f602c47bf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
