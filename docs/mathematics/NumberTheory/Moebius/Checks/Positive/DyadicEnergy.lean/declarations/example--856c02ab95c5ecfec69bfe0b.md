# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd2f3f5d8f94d35d095b5f965ab2ec4ea33a64cb31c09d74a728d75018adfd6f",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--856c02ab95c5ecfec69bfe0b",
  "source": {
    "blob": "057e33bde2fc912fca6fb917d0ae6d1dd4d66730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 23,
    "path": "GRWTSK/NumberTheory/Moebius/Checks/Positive/DyadicEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:856c02ab95c5ecfec69bfe0bc56c1427df078b975d1c575197c8536778d5aea3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/Checks/Positive/DyadicEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd2f3f5d8f94d35d095b5f965ab2ec4ea33a64cb31c09d74a728d75018adfd6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {P B : Finset ℕ} (hP : ∀ p ∈ P, p.Prime) (hB : ∀ p ∈ B, p.Prime)
    (hd : Disjoint P B) {T u : ℝ} (huT : u ≤ T)
    (hpair : ∀ p ∈ B, ∀ q ∈ B, p ≠ q → T ≤ Real.log p+Real.log q) :
    primeNoteCascade (P ∪ B) u = primeNoteCascade P u-primeBlockEcho P B u :=
  cascade_union_eq_sub_echo hP hB hd huT hpair
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Moebius/Checks/Positive/DyadicEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/Checks/Positive/DyadicEnergy.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `057e33bde2fc912fca6fb917d0ae6d1dd4d66730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
