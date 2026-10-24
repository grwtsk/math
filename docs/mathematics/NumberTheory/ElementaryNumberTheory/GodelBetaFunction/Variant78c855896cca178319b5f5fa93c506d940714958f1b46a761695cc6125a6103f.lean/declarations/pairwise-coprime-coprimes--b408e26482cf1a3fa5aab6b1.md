# pairwise_coprime_coprimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a662ab3-0f42-98d5-99fa-4ddf31a243a9",
  "kind": "lemma",
  "lexical_name": "pairwise_coprime_coprimes",
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
  "slug": "pairwise-coprime-coprimes--b408e26482cf1a3fa5aab6b1",
  "source": {
    "blob": "09c6d004eb98c61135f507e6eaa25fffc389970b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b408e26482cf1a3fa5aab6b1d724df6fbc495abb9bbd8bf3f8c783292306131b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a662ab3-0f42-98d5-99fa-4ddf31a243a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma pairwise_coprime_coprimes (a : Fin m → ℕ) : Pairwise (Coprime on coprimes a) := by
  intro i j hij
  wlog ltij : i < j
  · exact (this a hij.symm (lt_of_le_of_ne (Fin.not_lt.mp ltij) hij.symm)).symm
  unfold Function.onFun coprimes
  have hja : j < supOfSeq a := lt_of_lt_of_le j.prop (le_step (le_max_left _ _))
  exact coprime_mul_succ
    (Nat.dvd_factorial (by omega)
      (by simpa only [Nat.succ_sub_succ] using le_of_lt (lt_of_le_of_lt (sub_le j i) hja)))

/-- Gödel's Beta Function. This is similar to `(Encodable.decodeList)[i]`, but it is easier to
prove that it is arithmetically definable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variant78c855896cca178319b5f5fa93c506d940714958f1b46a761695cc6125a6103f.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09c6d004eb98c61135f507e6eaa25fffc389970b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
