# _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.RecOnPrimePow.Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.induction_on_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75db5d88-d109-bef9-0e07-9ea135c4af1c",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.RecOnPrimePow.Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.induction_on_primes",
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
  "slug": "root-grwtsk-numbertheory-elementarynumbertheory-reconprimepow-varianta16--7d9bab52f598c17cc703fdb1",
  "source": {
    "blob": "2801c6419578eed4c6880c1a0ca852e8101b81f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 92,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d9bab52f598c17cc703fdb113d1d8737a4b894f0d21144886ea0d1f363f4360",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75db5d88-d109-bef9-0e07-9ea135c4af1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.NumberTheory.ElementaryNumberTheory.RecOnPrimePow.Varianta16cb40bc212255bc2e88aa12c773aead9a14c16d31b5a68979e7dfab038d538.induction_on_primes {motive : ℕ → Prop} (zero : motive 0) (one : motive 1)
    (prime_mul : ∀ p a : ℕ, p.Prime → motive a → motive (p * a)) : ∀ n, motive n := by
  refine recOnPrimePow zero one ?_
  rintro a p n hp - - ha
  induction n with
  | zero => simpa using ha
  | succ n ih =>
    rw [pow_succ', mul_assoc]
    exact prime_mul _ _ hp ih

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2801c6419578eed4c6880c1a0ca852e8101b81f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
