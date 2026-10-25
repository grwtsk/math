# even_xor'_odd'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:705ba1bc-9410-2b06-daad-3bcbefb63a8f",
  "kind": "theorem",
  "lexical_name": "even_xor'_odd'",
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
  "slug": "even-xor-odd--fefb98e40a4fb55c2e95c64a",
  "source": {
    "blob": "a41c94fba7f25d1a08e7159784bdf6e613e10039",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fefb98e40a4fb55c2e95c64a91850a8e65710f79652d4f9a8b871998cb96bcc8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:705ba1bc-9410-2b06-daad-3bcbefb63a8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_xor'_odd' (n : ℤ) : ∃ k, Xor' (n = 2 * k) (n = 2 * k + 1) := by
  rcases even_or_odd n with (⟨k, rfl⟩ | ⟨k, rfl⟩) <;> use k
  · simpa only [← two_mul, Xor', true_and_iff, eq_self_iff_true, not_true, or_false_iff,
      and_false_iff] using (succ_ne_self (2 * k)).symm
  · simp only [Xor', add_right_eq_self, false_or_iff, eq_self_iff_true, not_true, not_false_iff,
      one_ne_zero, and_self_iff]
#align int.even_xor_odd' Int.even_xor'_odd'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Parity/Variant1b20bc1fde2bd8c9b09d0eecf0077484ebe264d3ee1459910c1ad9872f8ea435.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a41c94fba7f25d1a08e7159784bdf6e613e10039` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
