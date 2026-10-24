# factors_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5372f2b06ddac5b499929a38e791f1e8684062a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bec68ae-be53-7eaf-d0e9-c995c244112f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ef12be6-3c84-46cb-87c5-4952a5059566",
  "kind": "theorem",
  "lexical_name": "factors_prime",
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
  "slug": "factors-prime--cba341ed0c0659820140bc2a",
  "source": {
    "blob": "b5372f2b06ddac5b499929a38e791f1e8684062a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cba341ed0c0659820140bc2acfe25393b08c6bdec5f4d2822029639bd3fe2297",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ef12be6-3c84-46cb-87c5-4952a5059566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factors_prime {p : ℕ} (hp : Nat.Prime p) : p.factors = [p] := by
  have : p = p - 2 + 2 := (tsub_eq_iff_eq_add_of_le hp.two_le).mp rfl
  rw [this, Nat.factors]
  simp only [Eq.symm this]
  have : Nat.minFac p = p := (Nat.prime_def_minFac.mp hp).2
  simp only [this, Nat.factors, Nat.div_self (Nat.Prime.pos hp)]
#align nat.factors_prime Nat.factors_prime

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5372f2b06ddac5b499929a38e791f1e8684062a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
