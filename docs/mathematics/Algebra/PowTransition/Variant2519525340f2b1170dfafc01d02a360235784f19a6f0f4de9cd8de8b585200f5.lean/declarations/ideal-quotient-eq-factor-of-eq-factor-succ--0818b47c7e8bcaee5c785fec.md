# Ideal.Quotient.eq_factor_of_eq_factor_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a141a4e99f4ac0ecfa3d3b6aa5532185795e772c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/2519525340f2b1170dfafc01d02a360235784f19a6f0f4de9cd8de8b585200f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce9099c6-8b72-cc00-1e2c-22cfe5b582b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c6891fc-32fc-eda1-6bce-cdbc069c3587",
  "kind": "lemma",
  "lexical_name": "Ideal.Quotient.eq_factor_of_eq_factor_succ",
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
  "slug": "ideal-quotient-eq-factor-of-eq-factor-succ--0818b47c7e8bcaee5c785fec",
  "source": {
    "blob": "a141a4e99f4ac0ecfa3d3b6aa5532185795e772c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 73,
    "path": "GRWTSK/Algebra/PowTransition/Variant2519525340f2b1170dfafc01d02a360235784f19a6f0f4de9cd8de8b585200f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0818b47c7e8bcaee5c785fec17bbccdc0e3b1862d137a23efcd7c4a49f979090",
  "verification": {
    "reference": "docs/verification/Algebra/PowTransition/Variant2519525340f2b1170dfafc01d02a360235784f19a6f0f4de9cd8de8b585200f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c6891fc-32fc-eda1-6bce-cdbc069c3587`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.Quotient.eq_factor_of_eq_factor_succ {I : ℕ → Ideal R} [∀ n, (I n).IsTwoSided]
    (hI : Antitone I) (x : (n : ℕ) → R ⧸ (I n)) (h : ∀ m, x m = factor (hI m.le_succ) (x (m + 1)))
    {m n : ℕ} (g : m ≤ n) : x m = factor (hI g) (x n) :=
  Submodule.eq_factor_of_eq_factor_succ hI x h g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PowTransition/Variant2519525340f2b1170dfafc01d02a360235784f19a6f0f4de9cd8de8b585200f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PowTransition/Variant2519525340f2b1170dfafc01d02a360235784f19a6f0f4de9cd8de8b585200f5.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a141a4e99f4ac0ecfa3d3b6aa5532185795e772c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
