# zero_mem_smul_set

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb42d1fe-06a7-c68c-5fa3-ce97a5805192",
  "kind": "lemma",
  "lexical_name": "zero_mem_smul_set",
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
  "slug": "zero-mem-smul-set--a3aa5b50329a7e1787dc345f",
  "source": {
    "blob": "bb534b5cb16cabd5c57f6ca11b233dc0f5bc6e18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3aa5b50329a7e1787dc345f35d5c1f2fd3b63b5c53319313d135ab3269f15e2",
  "verification": {
    "reference": "docs/verification/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb42d1fe-06a7-c68c-5fa3-ce97a5805192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma zero_mem_smul_set (h : (0 : β) ∈ t) : (0 : β) ∈ a • t := ⟨0, h, smul_zero _⟩

end SMulZeroClass
section SMulWithZero

variable [Zero α] [Zero β] [SMulWithZero α β] {s : Set α} {t : Set β}

/-!
Note that we have neither `SMulWithZero α (Set β)` nor `SMulWithZero (Set α) (Set β)`
because `0 * ∅ ≠ 0`.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Set/Variant5924a96081cc7fc38616c45f73f64b19ff5d90ccef56dabcd6b7d40318213086.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb534b5cb16cabd5c57f6ca11b233dc0f5bc6e18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
