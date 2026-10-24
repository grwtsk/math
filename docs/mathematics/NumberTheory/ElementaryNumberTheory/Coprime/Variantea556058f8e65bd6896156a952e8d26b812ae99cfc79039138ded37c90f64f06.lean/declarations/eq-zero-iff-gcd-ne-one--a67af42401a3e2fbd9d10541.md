# eq_zero_iff_gcd_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2923900a3f990b0104dec1b7aa41f5d545e2bd15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 24,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4836002-ce56-b4eb-0b59-cec6268f061e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82e73665-e1c3-c28b-99a4-d425eb4cf89d",
  "kind": "theorem",
  "lexical_name": "eq_zero_iff_gcd_ne_one",
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
  "slug": "eq-zero-iff-gcd-ne-one--a67af42401a3e2fbd9d10541",
  "source": {
    "blob": "2923900a3f990b0104dec1b7aa41f5d545e2bd15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 24,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a67af42401a3e2fbd9d10541f5193b0c4a7da3a2d89c4cf8f1d1aaf997c82e3b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82e73665-e1c3-c28b-99a4-d425eb4cf89d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_iff_gcd_ne_one {a : ℤ} {p : ℕ} [pp : Fact p.Prime] :
    (a : ZMod p) = 0 ↔ a.gcd p ≠ 1 := by
  rw [Ne, Int.gcd_comm, ← Int.isCoprime_iff_gcd_eq_one,
    (Nat.prime_iff_prime_int.1 pp.1).coprime_iff_not_dvd, Classical.not_not,
    intCast_zmod_eq_zero_iff_dvd]

/-- If an integer `a` and a prime `p` satisfy `gcd a p = 1`, then `a : ZMod p` is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Coprime/Variantea556058f8e65bd6896156a952e8d26b812ae99cfc79039138ded37c90f64f06.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2923900a3f990b0104dec1b7aa41f5d545e2bd15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
