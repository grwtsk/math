# forall_pairingIn_eq_swap_or

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 379,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c71c9796-966d-02f5-1360-8f2eb2e71c11",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ddeba9ec-8edb-4a05-9116-6ae81218dd27",
  "kind": "lemma",
  "lexical_name": "forall_pairingIn_eq_swap_or",
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
  "slug": "forall-pairingin-eq-swap-or--f0e2799526e7de1e097aa9f2",
  "source": {
    "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 379,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0e2799526e7de1e097aa9f253973e3e3676a1616cbdaf4a45848e9e10fbb950",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddeba9ec-8edb-4a05-9116-6ae81218dd27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma forall_pairingIn_eq_swap_or [P.IsReduced] [P.IsIrreducible] :
    (∀ i j, P.pairingIn ℤ i j = P.pairingIn ℤ j i ∨
            P.pairingIn ℤ i j = 2 * P.pairingIn ℤ j i ∨
            P.pairingIn ℤ j i = 2 * P.pairingIn ℤ i j) ∨
    (∀ i j, P.pairingIn ℤ i j = P.pairingIn ℤ j i ∨
            P.pairingIn ℤ i j = 3 * P.pairingIn ℤ j i ∨
            P.pairingIn ℤ j i = 3 * P.pairingIn ℤ i j) := by
  simpa only [← P.algebraMap_pairingIn ℤ, eq_intCast, ← Int.cast_mul, Int.cast_inj,
    ← map_ofNat (algebraMap ℤ R)] using P.forall_pairing_eq_swap_or

namespace Base

variable {P}
variable (b : P.Base) (i j k : ι) (hij : i ≠ j) (hi : i ∈ b.support) (hj : j ∈ b.support)
include hij hi hj

variable {i j} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a436583ef69ee61f87fc7e9c264c8eec5d88e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
