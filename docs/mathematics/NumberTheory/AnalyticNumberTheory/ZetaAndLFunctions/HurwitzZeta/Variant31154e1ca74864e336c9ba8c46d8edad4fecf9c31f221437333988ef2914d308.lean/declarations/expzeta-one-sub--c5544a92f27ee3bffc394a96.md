# expZeta_one_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da81bd0210638dc1cf0adec660e12e6280788bea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 174,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dda48d2-9e9b-6b62-43f4-7bb62ba27259",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:773555b1-545f-62b2-0528-569f5bdd0bf0",
  "kind": "lemma",
  "lexical_name": "expZeta_one_sub",
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
  "slug": "expzeta-one-sub--c5544a92f27ee3bffc394a96",
  "source": {
    "blob": "da81bd0210638dc1cf0adec660e12e6280788bea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 174,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5544a92f27ee3bffc394a9675ee296a1263ab8988cfd1f9ed6b2057a8720b76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:773555b1-545f-62b2-0528-569f5bdd0bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma expZeta_one_sub (a : UnitAddCircle) {s : ℂ} (hs : ∀ (n : ℕ), s ≠ 1 - n) :
    expZeta a (1 - s) = (2 * π) ^ (-s) * Gamma s *
    (exp (π * I * s / 2) * hurwitzZeta a s + exp (-π * I * s / 2) * hurwitzZeta (-a) s) := by
  have hs' (n : ℕ) : s ≠ -↑n := by
    convert! hs (n + 1) using 1
    push_cast
    ring
  rw [expZeta, cosZeta_one_sub a hs, sinZeta_one_sub a hs', hurwitzZeta, hurwitzZeta,
    hurwitzZetaEven_neg, hurwitzZetaOdd_neg, Complex.cos, Complex.sin]
  rw [show ↑π * I * s / 2 = ↑π * s / 2 * I by ring,
    show -↑π * I * s / 2 = -(↑π * s / 2) * I by ring]
  -- these `generalize` commands are not strictly needed for the `ring_nf` call to succeed, but
  -- make it run faster:
  generalize (2 * π : ℂ) ^ (-s) = x
  generalize (↑π * s / 2 * I).exp = y
  generalize (-(↑π * s / 2) * I).exp = z
  ring_nf
  rw [I_sq]
  ring_nf

end HurwitzZeta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant31154e1ca74864e336c9ba8c46d8edad4fecf9c31f221437333988ef2914d308.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da81bd0210638dc1cf0adec660e12e6280788bea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
