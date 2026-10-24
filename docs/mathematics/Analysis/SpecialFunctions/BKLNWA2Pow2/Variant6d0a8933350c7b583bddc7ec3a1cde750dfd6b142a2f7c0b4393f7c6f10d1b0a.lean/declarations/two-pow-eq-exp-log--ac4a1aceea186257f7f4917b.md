# two_pow_eq_exp_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08a691b3-7e5a-4130-e9af-8d4e2a8b14bc",
  "kind": "lemma",
  "lexical_name": "two_pow_eq_exp_log",
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
  "slug": "two-pow-eq-exp-log--ac4a1aceea186257f7f4917b",
  "source": {
    "blob": "18a79875802b97aac86e6f170926b759417f879f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 37,
    "path": "GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac4a1aceea186257f7f4917b7aa0e90482a1cd3ad9ed2248ec38edc7780a8cdf",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08a691b3-7e5a-4130-e9af-8d4e2a8b14bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma two_pow_eq_exp_log (n : ℕ) : (2:ℝ)^n = exp (↑n * log 2) := by
  have h := rpow_def_of_pos (show (0:ℝ) < 2 by positivity) (↑n : ℝ)
  rw [rpow_natCast] at h; rw [h]; ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/BKLNWA2Pow2/Variant6d0a8933350c7b583bddc7ec3a1cde750dfd6b142a2f7c0b4393f7c6f10d1b0a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18a79875802b97aac86e6f170926b759417f879f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
